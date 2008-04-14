Class {
	#name : #SVGGaussianBlurTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGGaussianBlurTag >> stdDeviation: aNumber [
	self
		attributeAt: 'stdDeviation'
		put: aNumber.

]

{ #category : #private }
SVGGaussianBlurTag >> tag [
	^'feGaussianBlur'
]
