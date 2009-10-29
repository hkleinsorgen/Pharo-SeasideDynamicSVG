Extension { #name : #WAVisitor }

{ #category : #'*SeasideDynamicSVG-Core' }
WAVisitor >> svgvisit: anObject [
	^anObject svgaccept: self
]
