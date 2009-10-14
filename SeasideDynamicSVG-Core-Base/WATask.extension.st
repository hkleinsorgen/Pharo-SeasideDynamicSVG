Extension { #name : #WATask }

{ #category : #'*SeasideDynamicSVG-Core' }
WATask >> svgaccept: aVisitor [
	aVisitor svgvisitTask: self
]
