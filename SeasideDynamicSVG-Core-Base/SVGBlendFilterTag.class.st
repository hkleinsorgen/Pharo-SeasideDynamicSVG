Class {
	#name : #SVGBlendFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGBlendFilterTag >> input2: aNumber [
	self
		attributeAt: 'in2'
		put: aNumber.

]

{ #category : #accessing }
SVGBlendFilterTag >> mode: aNumber [
	self
		attributeAt: 'mode'
		put: aNumber.

]

{ #category : #private }
SVGBlendFilterTag >> tag [
	^'feBlend'
]
