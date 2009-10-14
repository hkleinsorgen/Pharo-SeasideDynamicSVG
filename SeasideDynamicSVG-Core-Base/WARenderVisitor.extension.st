Extension { #name : #WARenderVisitor }

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderVisitor >> svgvisitPainter: aPainter [ 
	| callbacks svg |
	callbacks := self renderContext callbacksFor: self.
	svg := aPainter svgRendererClass 
		context: self renderContext
		callbacks: callbacks.
	svg svgTagsNeedNamespace: false.

	aPainter drawSVGContentOn: svg.
	svg flush.
]
