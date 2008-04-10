"
SVGEmbeddedDocumentComponent embeds SVGs with <embed>, <object> or <iframe>

Instance Variables
	drawable:		<Object>
	height:		<Object>
	width:		<Object>

drawable
	- xxxxx

height
	- xxxxx

width
	- xxxxx

"
Class {
	#name : #SVGEmbeddedDocumentComponent,
	#superclass : #WAComponent,
	#instVars : [
		'drawable',
		'width',
		'height'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'instance creation' }
SVGEmbeddedDocumentComponent class >> on: aSVGDrawable [
	
	^(self new)
		drawable: aSVGDrawable;
		yourself
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> drawable [
	
	^drawable
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> drawable: aDrawable [
	
	drawable := aDrawable
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> height [
	
	^height ifNil: [300]
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> height: aHeight [
	
	height := aHeight
]

{ #category : #rendering }
SVGEmbeddedDocumentComponent >> renderEmbedOn: canvas [
	" embed with <embed> "
	
	| url embedTag |
	url := canvas urlForEmbeddingSVGIn: self.
	embedTag := canvas brush: WAEmbedTag new.
	embedTag 
		url: url; 
		width: self width;
		height: self height;
		type: SVGRoot defaultContentType.

]

{ #category : #rendering }
SVGEmbeddedDocumentComponent >> renderExternalSVGOn: canvas [

	self renderEmbedOn: canvas


]

{ #category : #rendering }
SVGEmbeddedDocumentComponent >> renderIFrameOn: canvas [
	" embed as <iframe> "

	(canvas iframe)
		url: (canvas urlForEmbeddingSVGIn: self);
		width: self width;
		height: self height
]

{ #category : #rendering }
SVGEmbeddedDocumentComponent >> renderObjectOn: canvas [
	" embed as <object> "

	(canvas object)
		url: (canvas urlForEmbeddingSVGIn: self);
		width: self width;
		height: self height;
		type: SVGRoot defaultContentType.
]

{ #category : #private }
SVGEmbeddedDocumentComponent >> renderSVGDocumentOn: aCanvas [

	| innerContext docRoot session document response renderer svgCanvas |
	innerContext := aCanvas context copy.
	svgCanvas := SVGCanvas context: innerContext callbacks: aCanvas callbacks.
	docRoot := SVGRoot context: innerContext.
	session := WACurrentSession value.
	document := session outputDocumentClass new.
	response := WAResponse new.
	response beSVG.
	response headerAt: 'Cache-Control' put: 'No-cache'.
	document stream: response stream.
	innerContext document: document.
	docRoot open: document.
	renderer := self svgRendererClass context: svgCanvas context callbacks: svgCanvas callbacks.
	renderer render: self;
		 flush.
	docRoot close: document.
	session returnResponse: response
]

{ #category : #rendering }
SVGEmbeddedDocumentComponent >> renderWithContext: aRenderingContext [ 
	" this is a bad hack to allow drawing of external SVG documents  "
	^ aRenderingContext isSVGContext 
		ifTrue: [ self drawSVGWithContext: aRenderingContext ]
		ifFalse: [ super renderWithContext: aRenderingContext ]
]

{ #category : #rendering }
SVGEmbeddedDocumentComponent >> svgRendererClass [
	"Override this method if you want a custom SVG renderer."
	
	^SVGCanvas
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> width [
	
	^width ifNil: [300]
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> width: aWidth [
	
	width := aWidth
]
