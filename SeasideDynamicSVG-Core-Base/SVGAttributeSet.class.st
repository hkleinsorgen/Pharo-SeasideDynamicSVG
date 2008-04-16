"
A set of related attributes of a tag.

Currently, the attribute set wraps a brush. Maybe this could be done with traits, but this would have a serious impact on portability. 

Instance Variables
	brush:		<SVGTag>

brush
	- the wrapped tag brush. all attributes will be added to this brush.

"
Class {
	#name : #SVGAttributeSet,
	#superclass : #Object,
	#instVars : [
		'brush'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #'instance creation' }
SVGAttributeSet class >> brush: aSVGTag [

	^ self new brush: aSVGTag; yourself
]

{ #category : #private }
SVGAttributeSet >> apply: aValueOrBlock [

	^ aValueOrBlock isBlock
		ifTrue: [ aValueOrBlock value: self ]
		ifFalse: [ self setValue:  aValueOrBlock ]
		
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

{ #category : #private }
SVGAttributeSet >> setValue: aValue [
	" some attributes allow to pass values, e.g.
		svg opacity: 0.5
	instead of 
		svg opacity: [ : o | o pacity: 0.5 ]
	" 
	
	self error: 'Value ', aValue printString, ' cannot be applied to attribute set ', self class name
]
