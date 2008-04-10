Extension { #name : #WARenderCanvas }

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> renderDocumentFor: aComponent [

	| str |
	str := String new writeStream.
	self renderDocumentFor: aComponent on: str.
	^ str contents
]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> renderDocumentFor: aComponent on: aStream [

	| innerContext docRoot session document renderer |
	innerContext := self context copy.
	docRoot := SVGRoot context: innerContext.
	session := WACurrentSession value.
	document := session outputDocumentClass new.
	document stream: aStream.
	docRoot open: document.
	innerContext document: document.
	renderer := SVGCanvas context: innerContext callbacks: self callbacks.
	renderer render: aComponent;
		 flush.
	docRoot close: document.
	^ document
]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> renderEmbedded: aComponent [

	| response |
	response := WAResponse new.
	response headerAt: 'Cache-Control' put: 'No-cache'.
	self renderDocumentFor: aComponent on: response stream.
	response beXML.
	WACurrentSession value returnResponse: response
]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> svg [
	" Allows drawing inlined SVG.
	A bit nonstandard, since returns the with: block receives a SVG canvas"

	| brush svg |
	brush := SVGRootTag new.
	self brush: brush.
	svg := SVGCanvas
		context: self context
		callbacks: self callbacks.
	brush svgCanvas: svg.
	self context containsInlinedSVG: true.
	^ brush.
]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> svg: aBlock [
	" Allows drawing inlined SVG.
	A bit nonstandard, since the block receives a SVG canvas. "

	self svg drawWith: [ : svgCanvas | aBlock value: svgCanvas ].
]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> urlForEmbeddingSVGIn: aComponent [
	" this is a bad hack to allow drawing of external SVG documents 
	(as opposed to inline the SVG in the HTML code).
	The parameter 'svg' is added to the URL so that SVGHybridRenderContinuation knows
	that it should draw the SVG, not render the HTML "

" solution 1 - add parameter, so the render machinery knows that it has to render SVG.
Drawback: all components are drawn, which only allows one SVG per page "
	| url |
	url := self context actionUrl copy.
	url addParameter: 'svg'.
	^ url

"solution 2 - register rendering block. Supports multiple SVG components.
But when the continuation is flushed, the render machinery doesn know anymore
that it has to draw the SVG, and instead happily renders the entire page - in the embedded tag "
"	^ self urlForAction: [ self renderEmbedded: aComponent ] "

" solution 3 - prerender the SVG and store it. bulletproof, but the stored documents are never flushed "
"	^ self context
		urlForDocument: (self renderDocumentFor: aComponent)
		mimeType: SVGRoot defaultContentType
		fileName: nil "
]
