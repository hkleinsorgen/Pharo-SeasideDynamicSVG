Extension { #name : #WAComponent }

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> renderInlinedOn: canvas width: width height: height [ 
	" inline as <svg> tag "

	| svgTag |
	svgTag := canvas svg.
	svgTag width: width.
	svgTag height: height. 
	svgTag drawWith: [ : svg | svg render: self ]
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> svgaccept: aVisitor [
	aVisitor svgvisitComponent: self
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> svgacceptDecorated: aVisitor [
	aVisitor svgvisitDecorationsOfComponent: self
]
