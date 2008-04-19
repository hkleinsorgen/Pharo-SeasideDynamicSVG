Extension { #name : #WAComponent }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAComponent >> drawSVGOn: aRenderer [ 
	self decorationChainDo: [ : each | each drawSVGWithContext: aRenderer context ]
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAComponent >> exportSVG [
	
	self exportSVGAs: self application name , '.svg'
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAComponent >> exportSVGAs: filename [
	
	| str context callbacks |
	str _ String new writeStream.
	context _ SVGAwareRenderingContext new.
	context
		userAgentAdaptor: SVGStandardsCompliantBrowserAdaptor new;
		session: self session.
	callbacks _ WACallbackRegistry context: context owner: self.
	self renderSVGDocumentOn: str context: context callbacks: callbacks
		disableAnchors: true.
	self session
		respond:
			[:url | 
			(WAResponse new)
				contentType: 'application/octet-stream';
				attachmentWithFileName: filename;
				stream: str contents readStream;
				yourself]
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAComponent >> renderSVGDocumentOn: aStream context: context callbacks: callbacks [
	
	^self renderSVGDocumentOn: aStream context: context callbacks: callbacks
		disableAnchors: false
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAComponent >> renderSVGDocumentOn: aStream context: context callbacks: callbacks disableAnchors: disableAnchors [
	
	| innerContext docRoot session document renderer |
	innerContext _ context copy.
	innerContext disableAnchors: disableAnchors.
	docRoot _ SVGRoot context: innerContext.
	session _ WACurrentSession value.
	self updateSVGRoot: docRoot.
	document _ session outputDocumentClass new.
	document stream: aStream.
	docRoot open: document.
	innerContext document: document.
	renderer _ self svgRendererClass context: innerContext callbacks:
			callbacks.
	renderer svgTagsNeedNamespace: false.
	renderer
		render: self;
		flush.
	docRoot close: document.
	^document
]
