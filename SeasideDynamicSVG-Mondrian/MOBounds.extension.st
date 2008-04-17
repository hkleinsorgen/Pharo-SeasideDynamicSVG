Extension { #name : #MOBounds }

{ #category : #'*SeasideDynamicSVG-Mondrian' }
MOBounds >> toSVGStrokeCoordinates [

	^ Rectangle
		origin: self origin toSVGStrokeCoordinates
		extent: self extent
]
