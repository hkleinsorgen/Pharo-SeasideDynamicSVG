Class {
	#name : #SVGRenderPhaseContinuation,
	#superclass : #WARenderPhaseContinuation,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #private }
SVGRenderPhaseContinuation >> createRenderContext [

	| renderContext adaptor |		
	renderContext := super createRenderContext.
	adaptor := SVGUserAgentAdaptor adaptorForAgent: self request userAgent.
	renderContext userAgentAdaptor: adaptor.
	
	^ renderContext
]

{ #category : #private }
SVGRenderPhaseContinuation >> processRendering: aResponse [ 
	| document actionContinuation renderContext actionUrl actionBaseUrl htmlRoot |
	"Prepare the response"
	aResponse contentType: self application contentType.
	
	"Create objects we need"
	document := self requestContext newDocument.
	actionContinuation := self createActionContinuation.
	renderContext := self createRenderContext.
	
	"Create URL"
	actionUrl := actionContinuation registerForUrl: false.
	actionBaseUrl := actionUrl copy.
	self updateUrl: actionUrl.

	"Hook objects together"
	renderContext
		document: document;
		actionUrl: actionUrl;
		actionBaseUrl: actionBaseUrl;
		resourceUrl: self application resourceBaseUrl.
	actionContinuation renderContext: renderContext.
	htmlRoot := self createHtmlRootWithContext: renderContext.
	self updateRoot: htmlRoot.
	"svg : update root for svg"
	renderContext userAgentAdaptor updateRoot: htmlRoot.
	self toPresenterSendRoot: htmlRoot.

	"Render"
	document open: htmlRoot.
	self presenter renderWithContext: renderContext.

	"SVG : finish rendering"
	renderContext containsInlinedSVG 
		ifTrue: [ renderContext userAgentAdaptor prepareResponseForInlinedSVG: aResponse ].

	"close document"
	document close.
	
	"clean up"
	renderContext destroy.

]
