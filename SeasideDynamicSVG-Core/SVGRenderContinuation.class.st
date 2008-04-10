Class {
	#name : #SVGRenderContinuation,
	#superclass : #SVGAwareRenderContinuation,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #creational }
SVGRenderContinuation >> newContext [
	
	^(SVGRenderingContext new)
		session: self session;
		actionUrl: self url;
		yourself
]

{ #category : #creational }
SVGRenderContinuation >> newDocumentOn: aResponse [
	
	^WAHtmlStreamDocument new stream: aResponse stream
]

{ #category : #creational }
SVGRenderContinuation >> newHtmlRoot [
	
	| htmlRoot |
	htmlRoot := SVGRoot context: self context.
	^htmlRoot
]

{ #category : #creational }
SVGRenderContinuation >> newRenderContinuation [
	
	^SVGHybridRenderContinuation root: self root
]

{ #category : #creational }
SVGRenderContinuation >> newResponse [
	
	| response |
	response := super newResponse.
	response beSVG.
	^response
]

{ #category : #testing }
SVGRenderContinuation >> shouldRedirect: aRequest [
	
	^false
]

{ #category : #updating }
SVGRenderContinuation >> updateRoot: aSVGRoot [
	
	
]

{ #category : #private }
SVGRenderContinuation >> writeOnLoadOn: aDocument [
	
	
]
