Extension { #name : #MOBounds }

{ #category : #'*SeasideDynamicSVG-Mondrian-All' }
MOBounds >> toSVGStrokeCoordinates [

	^ Rectangle
		origin: self origin toSVGStrokeCoordinates
		extent: self extent
]
