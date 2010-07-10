Extension { #name : #WARenderCanvas }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderCanvas >> svg [
	" Allows drawing inlined SVG "

	| brush svg |
	self context userAgentAdaptor renderPreambleForInlinedSVGOn: self .
	brush := SVGRootTag new.
	self brush: brush.
	svg := self svgRendererClass 
		context: self context.
	brush svgCanvas: svg.
	svg svgTagsNeedNamespace: false.
	self context containsInlinedSVG: true.
	^ brush
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderCanvas >> svgRendererClass [

	^ SVGCanvas
]
