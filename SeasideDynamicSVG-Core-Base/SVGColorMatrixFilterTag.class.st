Class {
	#name : #SVGColorMatrixFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #private }
SVGColorMatrixFilterTag >> tag [
	^'feColorMatrix'
]

{ #category : #accessing }
SVGColorMatrixFilterTag >> type: aString [
	self
		attributeAt: 'type'
		put: aString.

]

{ #category : #accessing }
SVGColorMatrixFilterTag >> values: aNumberList [
	self
		attributeAt: 'values'
		put: aNumberList.

]
