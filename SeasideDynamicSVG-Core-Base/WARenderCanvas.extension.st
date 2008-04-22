Extension { #name : #WARenderCanvas }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderCanvas >> renderDocumentFor: aComponent [

	| str |
	str := String new writeStream.
	self renderDocumentFor: aComponent on: str.
	^ str contents
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderCanvas >> renderDocumentFor: aComponent on: aStream [
	
	^aComponent
		renderSVGDocumentOn: aStream
		context: self context
		callbacks: self callbacks
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
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

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderCanvas >> svg: aBlock [
	" Allows drawing inlined SVG.
	A bit nonstandard, since the block receives a SVG canvas. "

	self svg drawWith: [ : svgCanvas | aBlock value: svgCanvas ].
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderCanvas >> svgEmbed [

	^ self brush: WAEmbedTag new
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderCanvas >> svgRendererClass [

	^ SVGCanvas
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderCanvas >> urlForEmbeddingSVGIn: aComponent [ 
	| document handler |
	document := self renderDocumentFor: aComponent.
	handler := SVGDocumentHandler 
		document: document
		mimeType: SVGRoot defaultContentType
		fileName: nil.
	context registerSVGDocumentHandler: handler.
	^ (WACurrentSession value application urlForRequestHandler: handler) displayString
]
