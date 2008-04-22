Class {
	#name : #SVGBuilder,
	#superclass : #WAHtmlBuilder,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGBuilder >> contextClass [

	^ SVGAwareRenderingContext
]

{ #category : #accessing }
SVGBuilder >> documentClass [

	^ WAHtmlStreamDocument
]

{ #category : #rendering }
SVGBuilder >> render: anObject [
	^String streamContents: [ :stream |
		| context docRoot document html callbacks |
		document := (self documentClass new) stream: stream.
		context := self contextClass new.
		context document: document.
		context actionUrl: self actionUrl.
		callbacks := self createCallbacksFor: context.
		html := self canvasClass context: context callbacks: callbacks.
		self openDocumentDocument: document context: context.
		html context document stream: stream.
		html render: anObject.
		html flush.
		self closeDocument: document ]
]

{ #category : #accessing }
SVGBuilder >> rootClass [
	rootClass isNil ifTrue: [
		rootClass := SVGRoot ].
	^rootClass
]
