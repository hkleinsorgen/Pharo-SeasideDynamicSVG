Extension { #name : #WAComponent }

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> renderInlinedOn: canvas width: width height: height [ 

	" selector is bit too generic "
	self 
		greaseDeprecatedApi: 'WAComponent>>#renderInlinedOn:width:height:'
		details: 'Use #renderInlinedSVGOn:width:height:.'.
		
	^ self renderInlinedSVGOn: canvas width: width height: height 
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> renderInlinedSVGOn: canvas width: width height: height [ 
	" inline as <svg> tag "

	| svgTag result |
	result := nil.
	svgTag := canvas svg.
	svgTag width: width.
	svgTag height: height. 
	svgTag drawWith: [ : svg | result := svg render: self ].
	^result.
]
