Class {
	#name : #SVGRenderVisitor,
	#superclass : #WARenderVisitor,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #visiting }
SVGRenderVisitor >> visitPainter: aPainter [
	| renderer |
	renderer := aPainter svgRendererClass context: self renderContext.
	aPainter drawSVGContentOn: renderer.
	renderer flush.
	self renderContext containsInlinedSVG
		ifTrue: [ 
			self requestContext response
				ifNotNil: [ :response | self renderContext userAgentAdaptor prepareResponseForInlinedSVG: response ] ]
]
