Class {
	#name : #SVGMorphologyFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGMorphologyFilterTag >> operator: aString [
	self
		attributeAt: 'operator'
		put: aString.

]

{ #category : #accessing }
SVGMorphologyFilterTag >> radius: aNumberList [
	self
		attributeAt: 'radius'
		put: aNumberList

]

{ #category : #private }
SVGMorphologyFilterTag >> tag [
	^'feMorphology'
]
