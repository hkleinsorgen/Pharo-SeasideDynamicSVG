Class {
	#name : #SVGAttribute,
	#superclass : #Object,
	#instVars : [
		'attributes'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGAttribute >> attributeAt: aKey [
	^ self attributes at: aKey
]

{ #category : #accessing }
SVGAttribute >> attributeAt: aKey ifAbsent: aBlock [
	^ self attributes at: aKey ifAbsent: aBlock
]

{ #category : #accessing }
SVGAttribute >> attributeAt: aKey ifAbsentPut: aBlock [
	^ self attributes at: aKey ifAbsentPut: aBlock
]

{ #category : #accessing }
SVGAttribute >> attributeAt: aKey ifPresent: aBlock [
	^ self attributes at: aKey ifPresent: aBlock
]

{ #category : #accessing }
SVGAttribute >> attributeAt: aKey put: aValue [
	^ self attributes at: aKey put: aValue
]

{ #category : #accessing }
SVGAttribute >> attributes [
	^ attributes ifNil: [ attributes := WAHtmlAttributes new ]
]

{ #category : #accessing }
SVGAttribute >> attributesOn: htmlAttributes [
	attributes 
		ifNotNil: [attributes keysAndValuesDo: [:key :value | htmlAttributes at: key put: value]].
	
]
