Class {
	#name : #SVGPolylineTag,
	#superclass : #SVGShapeTag,
	#instVars : [
		'points'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGPolylineTag >> add: aPoint [
	points add: aPoint
]

{ #category : #accessing }
SVGPolylineTag >> addAll: aPointColl [
	points addAll: aPointColl
]

{ #category : #'initialize-release' }
SVGPolylineTag >> initialize [
	super initialize.
	points := OrderedCollection new.
]

{ #category : #accessing }
SVGPolylineTag >> points: aPointColl [
	points := aPointColl
]

{ #category : #accessing }
SVGPolylineTag >> tag [
	^'polyline'
]

{ #category : #public }
SVGPolylineTag >> with: aBlock [
	| aStream |
	aStream := WriteStream on: String new.
	points do: [:aPoint | aStream nextPutAll: aPoint x svgAttributeValue;
								nextPut: $,;
								nextPutAll: aPoint y svgAttributeValue] separatedBy: [aStream nextPut: $ ].
	self attributes at: 'points' put: aStream contents.
	super with: aBlock
]
