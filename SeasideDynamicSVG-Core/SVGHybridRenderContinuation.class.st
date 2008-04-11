Class {
	#name : #SVGHybridRenderContinuation,
	#superclass : #SVGAwareRenderContinuation,
	#instVars : [
		'registeredHandlers'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #processing }
SVGHybridRenderContinuation >> processRendering: aResponse [ 

	super processRendering: aResponse.
	registeredHandlers isNil
		ifTrue: [registeredHandlers := context registeredHandlers]
		ifFalse: [registeredHandlers addAll: context registeredHandlers]
]

{ #category : #processing }
SVGHybridRenderContinuation >> run [
	
	| req |
	((req := self session currentRequest) notNil and: [self isSVGRequest: req])
		ifTrue: [self newSVGRenderContinuation run]
		ifFalse: [super run]
]

{ #category : #processing }
SVGHybridRenderContinuation >> svgExpired [
	" this continuation has been remove from the contination store.
	time to release the documents "
	
	registeredHandlers notNil ifTrue: [ registeredHandlers do: [ : handler | handler expire ] ]
]
