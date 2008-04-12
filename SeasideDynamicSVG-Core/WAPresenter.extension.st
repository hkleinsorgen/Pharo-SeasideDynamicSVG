Extension { #name : #WAPresenter }

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> drawSVGContentOn: aRenderer [ 
	self nextPresentersDo: [ : ea | ea drawSVGWithContext: aRenderer context ]
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> drawSVGWithContext: aRenderingContext [ 
	| callbacks svg |
	callbacks := aRenderingContext callbacksFor: self.
	svg := self svgRendererClass 
		context: aRenderingContext
		callbacks: callbacks.
	self drawSVGContentOn: svg.
	svg flush
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> svgRendererClass [
	"Override this method if you want a custom SVG renderer."
	
	^SVGCanvas
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> updateSVGRoot: aSVGRoot [
	"This method allows you customize the <svg> section of an SVG document. "
]
