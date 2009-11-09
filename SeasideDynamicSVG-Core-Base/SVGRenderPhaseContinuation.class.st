Class {
	#name : #SVGRenderPhaseContinuation,
	#superclass : #WARenderPhaseContinuation,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #'as yet unclassified' }
SVGRenderPhaseContinuation >> createRenderContext [
	| renderContext adaptor |
	adaptor := self request svgRequiresIEWorkarounds 
		ifTrue: [ SVGAdobeIEPluginAdaptor new ]
		ifFalse: [ SVGStandardsCompliantBrowserAdaptor new ].
		
	renderContext := SVGAwareRenderingContext new.
	renderContext userAgentAdaptor: adaptor.
	
	"Wrap the default visitor with a rendering guide"
	renderContext visitor: (WARenderingGuide client: renderContext visitor).
	
	^ renderContext
]

{ #category : #'as yet unclassified' }
SVGRenderPhaseContinuation >> processRendering: aResponse [ 
	| document actionContinuation renderContext actionUrl actionBaseUrl htmlRoot |
	"Prepare the response"
	aResponse contentType: self application contentType.
	"aResponse contentType: 'application/xhtml+xml'."
	
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
	renderContext userAgentAdaptor updateHTMLRoot: htmlRoot.
	self toPresenterSendRoot: htmlRoot.

	"Render"
	document open: htmlRoot.
	self presenter renderWithContext: renderContext.

	"SVG : finish rendering"
	renderContext containsInlinedSVG 
		ifTrue: [ renderContext userAgentAdaptor prepareResponseForInlinedSVG: aResponse ].

	"SVG : render footer"
	renderContext userAgentAdaptor writeFooterOn: document.

	"close document"
	document close.
	
	
	"clean up"
	renderContext destroy.

]
