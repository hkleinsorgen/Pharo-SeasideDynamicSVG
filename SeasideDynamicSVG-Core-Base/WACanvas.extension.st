Extension { #name : #WACanvas }

{ #category : #'*SeasideDynamicSVG-Core-private' }
WACanvas >> renderSVGDocumentFor: aComponent [ 

	| svgContext document renderer stream |
	stream := (String new: 256) writeStream.
	document := WAXmlDocument on: stream codec: GRNullCodec new.
	svgContext := context copy.
	svgContext document: document.
	renderer := aComponent svgRendererClass context: svgContext.
		
	aComponent renderInlinedSVGOn: renderer width: nil height: nil.
	renderer flush. 
	^ stream contents
		
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WACanvas >> svg [
	" Allows drawing inlined SVG "

	| brush svg |
	self context userAgentAdaptor renderPreambleForInlinedSVGOn: self .
	brush := SVGRootTag new.
	self brush: brush.
	svg := self svgRendererClass context: self context.
	brush svgCanvas: svg.
	svg svgTagsNeedNamespace: false.
	self context containsInlinedSVG: true.
	^ brush
]

{ #category : #'*SeasideDynamicSVG-Core-private' }
WACanvas >> svgEmbedComponent: aComponent brush: brush width: svgWidth height: svgHeight [

	| url embedTag |
	url := self urlForEmbeddingSVGComponent: aComponent.
	brush 
		url: url; 
		type: SVGRoot defaultContentType.
	svgWidth notNil ifTrue: [ brush width: svgWidth ]. 
	svgHeight notNil ifTrue: [ brush height: svgHeight ].
	^ brush
	
]

{ #category : #'*SeasideDynamicSVG-Core-private' }
WACanvas >> svgRendererClass [

	^ SVGCanvas
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WACanvas >> svgTagsNeedNamespace [

	^ false
]

{ #category : #'*SeasideDynamicSVG-Core-private' }
WACanvas >> urlForEmbeddingSVGComponent: aComponent [ 

	^ self urlForEmbeddingSVGComponent: aComponent filename: nil binary: false
]

{ #category : #'*SeasideDynamicSVG-Core-private' }
WACanvas >> urlForEmbeddingSVGComponent: aComponent filename: aFilename binary: binary [

	| documentContents mimeType codec writeStream utf8String stream |
	documentContents := self renderSVGDocumentFor: aComponent.
	binary 
		ifTrue: [
			codec := GRCodec forEncoding: 'UTF-8'.
			" workaround for bug in Grease for VisualWorks - encoderFor: does not work correctly "
			stream := WriteStream on: (String new: documentContents size).
			stream nextPutAll: '<?xml version="1.0" encoding="utf-8"?>';crlf.
			stream nextPutAll: (codec encode: documentContents).
			documentContents := stream contents asByteArray.
		].
	mimeType := (SVGMimeType fromString: SVGRoot defaultContentType) isBinary: binary.
	^ self context urlForDocument: documentContents mimeType: mimeType fileName: aFilename
]
