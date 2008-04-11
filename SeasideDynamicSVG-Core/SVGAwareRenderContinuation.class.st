Class {
	#name : #SVGAwareRenderContinuation,
	#superclass : #WARenderContinuation,
	#instVars : [
		'registeredHandlers'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #creational }
SVGAwareRenderContinuation >> newContext [
	
	^(SVGAwareRenderingContext new)
		session: self session;
		actionUrl: self url;
		yourself
]

{ #category : #processing }
SVGAwareRenderContinuation >> processRendering: aResponse [

	super processRendering: aResponse.
	" remember document handlers, so that they can be expired later when this contination expires "
	registeredHandlers isNil
		ifTrue: [registeredHandlers := context registeredHandlers]
		ifFalse: [registeredHandlers addAll: context registeredHandlers].
	context containsInlinedSVG
		ifTrue: [ 
			" mozilla requires XML... IE will not like that "
			aResponse beXML
		]
]

{ #category : #processing }
SVGAwareRenderContinuation >> svgExpired [
	" this continuation has been remove from the contination store.
	time to release the documents "
	
	registeredHandlers notNil ifTrue: [ registeredHandlers do: [ : handler | handler expire ] ]
]
