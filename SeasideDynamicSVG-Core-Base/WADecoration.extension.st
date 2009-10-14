Extension { #name : #WADecoration }

{ #category : #'*SeasideDynamicSVG-Core' }
WADecoration >> drawSVGContentOn: html [
	self drawSVGNextOn: html
]

{ #category : #'*SeasideDynamicSVG-Core' }
WADecoration >> drawSVGNextOn: html [
	self next drawSVGUndecoratedWithContext: html context
]

{ #category : #'*SeasideDynamicSVG-Core' }
WADecoration >> svgaccept: aVisitor [
	aVisitor svgvisitDecoration: self
]
