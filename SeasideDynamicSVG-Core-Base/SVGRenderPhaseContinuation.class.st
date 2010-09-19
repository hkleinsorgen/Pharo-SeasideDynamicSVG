Class {
	#name : #SVGRenderPhaseContinuation,
	#superclass : #WARenderPhaseContinuation,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #private }
SVGRenderPhaseContinuation >> processRendering: aResponse [ 
	| document actionContinuation renderContext actionUrl actionBaseUrl htmlRoot |
	
	self greaseDeprecatedApi: 'SVGRenderPhaseContinuation>>#processRendering:' details: 'Add SVGUserAgentLibrary to the application and replace SVGRenderPhaseContinuation with WARenderPhaseContinuation in your application preferences'.

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

	"close document"
	document close.
	
	"clean up"
	renderContext destroy.

]
