Class {
	#name : #SVGTransformList,
	#superclass : #OrderedCollection,
	#category : #'SeasideDynamicSVG-Core-Transform'
}

{ #category : #public }
SVGTransformList >> matrix: aNumberList [
	self add: (SVGMatrixType with: aNumberList)
]

{ #category : #public }
SVGTransformList >> rotate: aNumber [
	self add: (SVGRotationType with: aNumber)
]

{ #category : #public }
SVGTransformList >> scale: aPointOrNumber [
	self  add: (SVGScaleType with: aPointOrNumber)
]

{ #category : #public }
SVGTransformList >> skewX: aNumber [
	self add: (SVGSkewXType with: aNumber)
]

{ #category : #public }
SVGTransformList >> skewY: aNumber [
	self add: (SVGSkewYType with: aNumber)
]

{ #category : #printing }
SVGTransformList >> toSVGString [
	| resultStream |
	resultStream := WriteStream on: String new.
	self do: [:aType | resultStream nextPutAll: aType toSVGString] separatedBy: [resultStream nextPut: $ ].
	^resultStream contents
]

{ #category : #public }
SVGTransformList >> translate: aPointOrNumber [
	self add: (SVGTranslationType with: aPointOrNumber)
]
