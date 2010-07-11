Extension { #name : #WAPresenter }

{ #category : #'*SeasideDynamicSVG-Core' }
WAPresenter >> drawSVGContentOn: aRenderer [ 

	self childrenDo: [ : each | aRenderer render: each ]
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
