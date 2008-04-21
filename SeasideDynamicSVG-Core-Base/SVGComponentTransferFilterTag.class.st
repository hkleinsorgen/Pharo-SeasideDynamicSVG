Class {
	#name : #SVGComponentTransferFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGComponentTransferFilterTag >> amplitude: aNumber [
	self
		attributeAt: 'amplitude'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferFilterTag >> exponent: aNumber [
	self
		attributeAt: 'exponent'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferFilterTag >> intercept: aNumber [
	self
		attributeAt: 'intercept'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferFilterTag >> isClosed [
	^false
]

{ #category : #accessing }
SVGComponentTransferFilterTag >> offset: aNumber [
	self
		attributeAt: 'offset'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferFilterTag >> slope: aNumber [
	self
		attributeAt: 'slope'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferFilterTag >> tableValues: aNumberList [
	self
		attributeAt: 'tableValues'
		put: aNumberList.

]

{ #category : #private }
SVGComponentTransferFilterTag >> tag [
	^'feComponentTransfer'
]

{ #category : #accessing }
SVGComponentTransferFilterTag >> type: aString [
	self
		attributeAt: 'type'
		put: aString.

]

{ #category : #accessing }
SVGComponentTransferFilterTag >> values: aNumberList [
	self
		attributeAt: 'values'
		put: aNumberList.

]
