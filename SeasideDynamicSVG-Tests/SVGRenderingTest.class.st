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
SVGRenderingTest >> performTest [
	WACurrentSession
		use: (session := self sessionClass new)
		during: [super performTest ]
]

{ #category : #private }
SVGRenderingTest >> renderComponent: aComponent [
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
