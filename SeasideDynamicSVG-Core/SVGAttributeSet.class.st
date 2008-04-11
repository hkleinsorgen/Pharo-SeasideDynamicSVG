Class {
	#name : #SVGAttributeSet,
	#superclass : #Object,
	#instVars : [
		'brush'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'instance creation' }
SVGAttributeSet class >> brush: aSVGTag [

	^ self new brush: aSVGTag; yourself
]

{ #category : #'accessing-attributes' }
SVGAttributeSet >> attributeAt: aKey [
	^ self brush attributeAt: aKey
]

{ #category : #'accessing-attributes' }
SVGAttributeSet >> attributeAt: aKey ifAbsent: aBlock [
	^ self brush attributeAt: aKey ifAbsent: aBlock
]

{ #category : #'accessing-attributes' }
SVGAttributeSet >> attributeAt: aKey ifAbsentPut: aBlock [
	^ self brush attributeAt: aKey ifAbsentPut: aBlock
]

{ #category : #'accessing-attributes' }
SVGAttributeSet >> attributeAt: aKey ifPresent: aBlock [
	^ self brush attributeAt: aKey ifPresent: aBlock
]

{ #category : #'accessing-attributes' }
SVGAttributeSet >> attributeAt: aKey put: aValue [
	^ self brush attributeAt: aKey put: aValue
]

{ #category : #'accessing-attributes' }
SVGAttributeSet >> attributes [
	^ self brush attributes
]

{ #category : #private }
SVGAttributeSet >> brush [
	^ brush
]

{ #category : #private }
SVGAttributeSet >> brush: aSVGTag [

	brush := aSVGTag
]
