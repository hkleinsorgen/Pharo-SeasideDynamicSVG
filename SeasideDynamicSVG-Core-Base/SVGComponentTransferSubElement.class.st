Class {
	#name : #SVGComponentTransferSubElement,
	#superclass : #SVGFilterSubElement,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGComponentTransferSubElement >> amplitude: aNumber [
	self
		attributeAt: 'amplitude'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferSubElement >> exponent: aNumber [
	self
		attributeAt: 'exponent'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferSubElement >> intercept: aNumber [
	self
		attributeAt: 'intercept'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferSubElement >> offset: aNumber [
	self
		attributeAt: 'offset'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferSubElement >> slope: aNumber [
	self
		attributeAt: 'slope'
		put: aNumber.

]

{ #category : #accessing }
SVGComponentTransferSubElement >> tableValues: aNumberList [
	self
		attributeAt: 'tableValues'
		put: aNumberList.

]

{ #category : #private }
SVGComponentTransferSubElement >> tag [
	^self subclassResponsibility 
]

{ #category : #accessing }
SVGComponentTransferSubElement >> type: aString [
	self
		attributeAt: 'type'
		put: aString.

]

{ #category : #accessing }
SVGComponentTransferSubElement >> values: aNumberList [
	self
		attributeAt: 'values'
		put: aNumberList.

]
