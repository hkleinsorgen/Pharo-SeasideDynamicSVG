Extension { #name : #WARenderVisitor }

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderVisitor >> svgvisitPainter: aPainter [ 
	| callbacks svg result |
	callbacks := self renderContext callbacks.
	svg := aPainter svgRendererClass 
		context: self renderContext
		callbacks: callbacks.
	svg svgTagsNeedNamespace: false.

	result:= aPainter drawSVGContentOn: svg.
	svg flush.
	^result.
]
