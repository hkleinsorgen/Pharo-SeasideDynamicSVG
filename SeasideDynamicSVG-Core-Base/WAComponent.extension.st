Extension { #name : #WAComponent }

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> renderInlinedOn: canvas width: width height: height [ 
	" inline as <svg> tag "

	| svgTag result |
	result := nil.
	svgTag := canvas svg.
	svgTag width: width.
	svgTag height: height. 
	svgTag drawWith: [ : svg | result := svg render: self ].
	^result.
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> svgaccept: aVisitor [
	^aVisitor svgvisitComponent: self
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> svgacceptDecorated: aVisitor [
	aVisitor svgvisitDecorationsOfComponent: self
]
