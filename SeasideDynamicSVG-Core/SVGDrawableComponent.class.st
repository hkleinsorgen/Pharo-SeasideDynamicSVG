Class {
	#name : #SVGDrawableComponent,
	#superclass : #WAComponent,
	#instVars : [
		'drawable',
		'width',
		'height'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'instance creation' }
SVGDrawableComponent class >> on: aSVGDrawable [
	
	^(self new)
		drawable: aSVGDrawable;
		yourself
]

{ #category : #drawing }
SVGDrawableComponent >> drawContentOn: svg [
	
	
]

{ #category : #drawing }
SVGDrawableComponent >> drawWithContext: aRenderingContext [
	
	| callbacks svg |
	callbacks := aRenderingContext callbacksFor: self.
	svg := self svgRendererClass context: aRenderingContext callbacks:
			callbacks.
	self drawContentOn: svg.
	svg flush
]

{ #category : #accessing }
SVGDrawableComponent >> drawable [
	
	^drawable
]

{ #category : #accessing }
SVGDrawableComponent >> drawable: aDrawable [
	
	drawable := aDrawable
]

{ #category : #accessing }
SVGDrawableComponent >> height [
	
	^height ifNil: [300]
]

{ #category : #accessing }
SVGDrawableComponent >> height: aHeight [
	
	height := aHeight
]

{ #category : #rendering }
SVGDrawableComponent >> renderExternalSVGOn: canvas [
	" this is a bad hack to allow drawing of external SVG documents 
	(as opposed to inline the SVG in the HTML code).
	The parameter 'svg' is added to the URL so that SVGHybridRenderContinuation knows
	that it should draw the SVG, not render the HTML "
	"object tag is not working for IE7 ?????"
	
	
	| url embedTag |
	url := canvas context actionUrl copy.
	url addParameter: 'svg'.
	embedTag := canvas brush: WAEmbedTag new.
	embedTag url: url; width: self width;
		height: self height;
		type: SVGRoot defaultContentType.
	"(canvas object)
		url: url;
		width: self width;
		height: self height;
		type: SVGRoot defaultContentType;
		with:
				[canvas text:
							'Bad luck, embedding SVG via <object> ist not supported by your browser']"
]

{ #category : #rendering }
SVGDrawableComponent >> renderWithContext: aRenderingContext [
	" this is a bad hack to allow drawing of external SVG documents  "
	^aRenderingContext isSVGContext
		ifTrue: [self drawWithContext: aRenderingContext]
		ifFalse: [super renderWithContext: aRenderingContext]
]

{ #category : #rendering }
SVGDrawableComponent >> svgRendererClass [
	"Override this method if you want a custom SVG renderer."
	
	^SVGCanvas
]

{ #category : #accessing }
SVGDrawableComponent >> width [
	
	^width ifNil: [300]
]

{ #category : #accessing }
SVGDrawableComponent >> width: aWidth [
	
	width := aWidth
]
