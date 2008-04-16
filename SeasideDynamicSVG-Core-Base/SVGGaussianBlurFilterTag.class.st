Class {
	#name : #SVGGaussianBlurFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGGaussianBlurFilterTag >> stdDeviation: aNumber [
	self
		attributeAt: 'stdDeviation'
		put: aNumber.

]

{ #category : #private }
SVGGaussianBlurFilterTag >> tag [
	^'feGaussianBlur'
]
