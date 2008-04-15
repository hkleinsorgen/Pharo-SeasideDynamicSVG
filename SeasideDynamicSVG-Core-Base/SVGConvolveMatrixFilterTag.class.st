Class {
	#name : #SVGConvolveMatrixFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGConvolveMatrixFilterTag >> bias: aNumber [
	self
		attributeAt: 'bias'
		put: aNumber.

]

{ #category : #accessing }
SVGConvolveMatrixFilterTag >> divisor: aNumber [
	self
		attributeAt: 'divisor'
		put: aNumber.

]

{ #category : #accessing }
SVGConvolveMatrixFilterTag >> edgeMode: aString [
	self
		attributeAt: 'edgeMode'
		put: aString.

]

{ #category : #accessing }
SVGConvolveMatrixFilterTag >> kernelMatrix: aNumberList [
	self
		attributeAt: 'kernelMatrix'
		put: aNumberList.

]

{ #category : #accessing }
SVGConvolveMatrixFilterTag >> kernelUnitLength: aNumberList [
	self
		attributeAt: 'kernelUnitLength'
		put: aNumberList.

]

{ #category : #accessing }
SVGConvolveMatrixFilterTag >> order: aNumber [
	self
		attributeAt: 'order'
		put: aNumber.

]

{ #category : #accessing }
SVGConvolveMatrixFilterTag >> preserveAlpha: aBoolean [
	self
		attributeAt: 'preserveAlpha'
		put: aBoolean.

]

{ #category : #private }
SVGConvolveMatrixFilterTag >> tag [
	^'feConvolveMatrix'
]

{ #category : #accessing }
SVGConvolveMatrixFilterTag >> targetX: anInteger [
	self
		attributeAt: 'targetX'
		put: anInteger.

]
