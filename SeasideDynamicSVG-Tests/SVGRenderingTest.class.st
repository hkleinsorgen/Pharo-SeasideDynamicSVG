Class {
	#name : #SVGRenderingTest,
	#superclass : #TestCase,
	#instVars : [
		'session'
	],
	#category : #'SeasideDynamicSVG-Tests'
}

{ #category : #asserting }
SVGRenderingTest >> assertRender: aBlock equals: anExpectedString [
	| actual |
	actual := self renderer render: aBlock.
	self
		assert: (anExpectedString = actual)
		description: anExpectedString printString ,
			' expected, but got ' , actual printString
]

{ #category : #asserting }
SVGRenderingTest >> assertRender: aBlock matches: anExpectedString [
	| actual |
	actual := self renderer render: aBlock.
	self
		assert: (actual includesSubString: anExpectedString)
		description: anExpectedString printString ,
			' expected, but got ' , actual printString
]

{ #category : #private }
SVGRenderingTest >> createRequestContextForURL: url [

	| requestContext request response codec |
	request := WARequest method: 'GET' uri: url.
	codec := GRCodec forEncoding: 'UTF-8'.
	response := WABufferedResponse on: (codec  encoderFor:  (WriteStream on: String new)).
	requestContext := WARequestContext request: request response: response codec: codec.
	^ requestContext 
]

{ #category : #private }
SVGRenderingTest >> renderComponent: aComponent [

	aComponent embedSelector: #renderInlinedOn:.
	self renderer render: aComponent.

]

{ #category : #accessing }
SVGRenderingTest >> renderer [
	^ self rendererClass builder
]

{ #category : #accessing }
SVGRenderingTest >> rendererClass [
	^ SVGCanvas
]

{ #category : #accessing }
SVGRenderingTest >> session [
	^ session
]

{ #category : #accessing }
SVGRenderingTest >> sessionClass [
	^WASession
]

{ #category : #private }
SVGRenderingTest >> setApplicationContextWhile: aBlock [

	| requestContext request response |
	requestContext := self createRequestContextForURL: 'http://localhost/SVGTests'.
	requestContext push: WAApplication new while: [
		WACurrentRequestContext use: requestContext during: aBlock
			]
]

{ #category : #testing }
SVGRenderingTest >> testDocumentHandler [

	self setApplicationContextWhile: [
		| canvas url component handler documentContext svg |
		canvas := WARenderCanvas context: WARenderContext new.
		component := SVGXLineTest new.
		url := canvas urlForEmbeddingSVGComponent: component.
		self assert: url notNil.
		documentContext := self createRequestContextForURL: url.
		handler := WACurrentRequestContext value handler.
		[ handler handle: documentContext ] on: WAResponseNotification do: [ : ex | ].
		svg := documentContext response contents.
		self assert: (svg beginsWith: '<svg')
	].

]

{ #category : #testing }
SVGRenderingTest >> testLineRendering [
	self renderComponent: (SVGXLineTest new).

]

{ #category : #testing }
SVGRenderingTest >> testSmileyRendering [
	self renderComponent: (SVGXSmiley new).
]

{ #category : #testing }
SVGRenderingTest >> testTransformRendering [
	"should be rendered on a real SVGCanvas"
	self assert:(SVGRectangleTag new transform: [:t | t rotate: 90; scale: 2]) transformList toSVGString = 'rotate(90) scale(2)'
]
