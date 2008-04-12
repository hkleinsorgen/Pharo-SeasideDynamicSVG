"
SVGEmbeddedDocumentComponent adds some common functionality that is useful when rendering SVG, in particular with regard to switching between embedding and inlining.

Instance Variables
	drawable:		<Object>
	height:		<Object>
	viewport:		<Object>
	width:		<Object>

drawable
	- xxxxx

height
	- xxxxx

viewport
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
		'height',
		'viewBox'
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
SVGEmbeddedDocumentComponent >> defaultHeight [
	
	^ 300
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> defaultViewBox [
	" rectangle or SVG compatible viewbox string "
	^ nil
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> defaultWidth [
	
	^ 300
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
	
	^height 
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> height: aHeight [
	
	height := aHeight
]

{ #category : #'initialize-release' }
SVGEmbeddedDocumentComponent >> initialize [
	super initialize.
	width := self defaultWidth.
	height := self defaultHeight.
	viewBox := self defaultViewBox
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
SVGEmbeddedDocumentComponent >> renderInlinedOn: canvas [ 
	" inline as <svg> "
	| svgTag |
	canvas html: '<object id="AdobeSVG" classid="clsid:78156a80-c6a1-4bbf-8e6a-3cd390eeb4e2"></object>
			<?import namespace="svg" implementation="#AdobeSVG"?>'.
	svgTag := canvas svg.
	self width notNil ifTrue: [ svgTag width: self width ].
	self height notNil ifTrue: [ svgTag height: self height ].
	self setAttributesOfRootTag: svgTag.
	svgTag drawWith: [ : svg | svg render: self ]
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

{ #category : #rendering }
SVGEmbeddedDocumentComponent >> setAttributesOfRootTag: svgTag [ 
	self viewBox notNil ifTrue: [ svgTag viewBox: self viewBox ]
]

{ #category : #rendering }
SVGEmbeddedDocumentComponent >> updateSVGRoot: aSVGRoot [ 
	super updateSVGRoot: aSVGRoot.
	self setAttributesOfRootTag: aSVGRoot svgTag
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> viewBox [
	" rectangle or SVG compatible viewbox string "
	^ viewBox
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> viewBox: aViewbox [ 
	" rectangle or SVG compatible viewbox string "
	viewBox := aViewbox
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> width [
	
	^width 
]

{ #category : #accessing }
SVGEmbeddedDocumentComponent >> width: aWidth [
	
	width := aWidth
]
