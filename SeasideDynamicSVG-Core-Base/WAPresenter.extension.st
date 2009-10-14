Extension { #name : #WAPresenter }

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> drawSVGContentOn: svg [
	
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> drawSVGUndecoratedWithContext: aRenderContext [
	"Render ourselves directly on aRenderer without allowing our Decorations to be visited."
	
	self svgaccept: aRenderContext visitor
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> svgRendererClass [
	"Override this method if you want a custom SVG renderer."
	
	^SVGCanvas
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> svgaccept: aVisitor [
	aVisitor svgvisitPresenter: self
]
