Class {
	#name : #SVGOffsetFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGOffsetFilterTag >> dx: aNumber [
	self
		attributeAt: 'dx'
		put: aNumber

]

{ #category : #accessing }
SVGOffsetFilterTag >> dy: aNumber [
	self
		attributeAt: 'dy'
		put: aNumber

]

{ #category : #private }
SVGOffsetFilterTag >> tag [
	^'feOffset'
]
