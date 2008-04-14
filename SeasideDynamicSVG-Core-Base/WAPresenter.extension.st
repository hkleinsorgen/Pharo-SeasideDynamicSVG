Extension { #name : #WAPresenter }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAPresenter >> drawSVGContentOn: aRenderer [ 
	self nextPresentersDo: [ : ea | ea drawSVGWithContext: aRenderer context ]
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAPresenter >> drawSVGWithContext: aRenderingContext [ 
	| callbacks svg |
	callbacks := aRenderingContext callbacksFor: self.
	svg := self svgRendererClass 
		context: aRenderingContext
		callbacks: callbacks.
	self drawSVGContentOn: svg.
	svg flush
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAPresenter >> svgRendererClass [
	"Override this method if you want a custom SVG renderer."
	
	^SVGCanvas
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAPresenter >> updateSVGRoot: aSVGRoot [
	"This method allows you customize the <svg> section of an SVG document. "
]
