Extension { #name : #WAComponent }

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> exportSVG [
	
	self exportSVGAs: self application name , '.svg'
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> exportSVGAs: filename [
	
	| canvas document context url |
	context := WARenderContext new.
	context visitor: (SVGRenderVisitor context: context).
	context actionUrl: WAUrl new; resourceUrl: WAUrl new.
	context disableSVGAnchors: true.
	canvas := SVGCanvas context: context.
	url := canvas urlForEmbeddingSVGComponent: self filename: filename binary: true.
	self session redirectTo: url.
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> renderInlinedOn: canvas width: width height: height [ 

	" selector is bit too generic "
	self 
		greaseDeprecatedApi: 'WAComponent>>#renderInlinedOn:width:height:'
		details: 'Use #renderInlinedSVGOn:width:height:.'.
		
	^ self renderInlinedSVGOn: canvas width: width height: height 
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> renderInlinedSVGOn: canvas width: aWidth height: aHeight [ 
	" inline within <svg> "

	| svgTag result |
	result := nil.
	svgTag := canvas svg.
	aWidth notNil ifTrue: [ svgTag width: aWidth ].
	aHeight notNil ifTrue: [ svgTag height: aHeight ].
	svgTag drawWith: [ : svg | result := svg render: self ].
	^result.
]
