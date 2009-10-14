Extension { #name : #WARenderCanvas }

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> svg [
	" Allows drawing inlined SVG "

	| brush svg |
	self context userAgentAdaptor renderPreambleForInlinedSVGOn: self .
	brush := SVGRootTag new.
	self brush: brush.
	svg := self svgRendererClass 
		context: self context
		callbacks: self callbacks.
	brush svgCanvas: svg.
	svg svgTagsNeedNamespace: false.
	self context containsInlinedSVG: true.
	^ brush
]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> svgRendererClass [

	^ SVGCanvas
]
