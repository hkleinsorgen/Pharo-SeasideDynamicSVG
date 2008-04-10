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

{ #category : #drawing }
SVGEmbeddedDocumentComponent >> drawSVGContentOn: svg [ 
	
]

{ #category : #drawing }
SVGEmbeddedDocumentComponent >> drawSVGWithContext: aRenderingContext [ 
	| callbacks svg |
	callbacks := aRenderingContext callbacksFor: self.
	svg := self svgRendererClass 
		context: aRenderingContext
		callbacks: callbacks.
	self drawSVGContentOn: svg.
	svg flush
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

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> width [
	
	^width ifNil: [300]
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> width: aWidth [
	
	width := aWidth
]
