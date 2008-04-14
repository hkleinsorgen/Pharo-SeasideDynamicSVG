Class {
	#name : #SVGAwareRenderContinuation,
	#superclass : #WARenderContinuation,
	#instVars : [
		'registeredHandlers'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #creational }
SVGAwareRenderContinuation >> newContext [
	| adaptor |
	adaptor := self request svgRequiresIEWorkarounds 
		ifTrue: [ SVGAdobeIEPluginAdaptor new ]
		ifFalse: [ SVGStandardsCompliantBrowserAdaptor new ].
	^ SVGAwareRenderingContext new
		userAgentAdaptor: adaptor;
		session: self session ;
		actionUrl: self url ;
		yourself
]

{ #category : #processing }
SVGAwareRenderContinuation >> processRendering: aResponse [ 
	| document htmlRoot |
	document := self newDocumentOn: aResponse.
	context document: document.
	htmlRoot := self newHtmlRoot.
	document open: htmlRoot.
	self root decorationChainDo: [ : each | each renderWithContext: context ].
	context userAgentAdaptor writeFooterOn: document.
	self writeOnLoadOn: document.
	document close: htmlRoot.
	context release.
	registeredHandlers isNil 
		ifTrue: [ 
			" remember document handlers, so that they can be expired later when this contination expires "
			registeredHandlers := context registeredHandlers
		]
		ifFalse: [ registeredHandlers addAll: context registeredHandlers ].
	context containsInlinedSVG 
		ifTrue: [ context userAgentAdaptor prepareResponseForInlinedSVG: aResponse ]
]

{ #category : #processing }
SVGAwareRenderContinuation >> svgExpired [
	" this continuation has been remove from the contination store.
	time to release the documents "
	
	registeredHandlers notNil ifTrue: [ registeredHandlers do: [ : handler | handler expire ] ]
]

{ #category : #updating }
SVGAwareRenderContinuation >> updateRoot: aHtmlRoot [

	super updateRoot: aHtmlRoot.
	self context userAgentAdaptor updateHTMLRoot: aHtmlRoot
]
