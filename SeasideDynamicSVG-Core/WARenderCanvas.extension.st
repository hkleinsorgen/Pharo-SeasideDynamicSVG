Extension { #name : #WARenderCanvas }

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> svg [
	" Allows drawing inlined SVG.
	A bit nonstandard, since returns a SVG canvas, not the brush "

	| brush svg |
	brush := SVGRootTag new.
	self brush: brush.
	svg := SVGCanvas
		context: self context
		callbacks: self callbacks.
	^ svg.
]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> svg: aBlock [
	" Allows drawing inlined SVG.
	A bit nonstandard, since the block receives a SVG canvas. "

	| brush svg |
	brush := SVGRootTag new. 
	self brush: brush.
	brush width: 300; height: 300.
	svg := SVGCanvas
		context: self context
		callbacks: self callbacks.
	self context containsInlinedSVG: true.
	brush with: [ aBlock value: svg ].
]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> urlForEmbeddingSVGIn: aComponent [
	" this is a bad hack to allow drawing of external SVG documents 
	(as opposed to inline the SVG in the HTML code).
	The parameter 'svg' is added to the URL so that SVGHybridRenderContinuation knows
	that it should draw the SVG, not render the HTML "

	| url |
	url := self context actionUrl copy.
	url addParameter: 'svg'.
	^ url

]
