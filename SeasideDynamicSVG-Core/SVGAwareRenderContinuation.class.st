Class {
	#name : #SVGAwareRenderContinuation,
	#superclass : #WARenderContinuation,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #processing }
SVGAwareRenderContinuation >> handleRequest: aRequest [
	
	| newContinuation |
	aRequest isXmlHttpRequest
		ifTrue: [self session onRespond: [:r | states snapshot]].
	self withNotificationHandler: [self processCallbacks: aRequest].
	newContinuation := (self isSVGRequest: aRequest)
		ifTrue: [self newSVGRenderContinuation]
		ifFalse:
			[(self shouldRedirect: aRequest)
				ifTrue: [self newRedirectContinuation]
				ifFalse: [self newRenderContinuation]].
	newContinuation run
]

{ #category : #processing }
SVGAwareRenderContinuation >> isSVGRequest: aRequest [
	
	^aRequest includesKey: 'svg'
]

{ #category : #processing }
SVGAwareRenderContinuation >> newSVGRenderContinuation [
	
	^SVGRenderContinuation root: self root
]
