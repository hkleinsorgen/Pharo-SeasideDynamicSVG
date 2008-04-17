Extension { #name : #MORenderer }

{ #category : #'*SeasideDynamicSVG-Mondrian' }
MORenderer >> drawSVGOn: svgCanvas [

	self drawSVGOn: svgCanvas convertCoordinates: false.
]

{ #category : #'*SeasideDynamicSVG-Mondrian' }
MORenderer >> drawSVGOn: svgCanvas convertCoordinates: convertCoordinates [

	| adaptor |
	self graph applyLayout.
	adaptor := SVGCanvasAdaptor onSVG: svgCanvas.
	adaptor convertCoordinates: convertCoordinates.
	self graph displayOn: adaptor.
]
