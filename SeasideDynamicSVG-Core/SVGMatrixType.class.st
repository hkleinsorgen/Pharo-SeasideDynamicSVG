Class {
	#name : #SVGMatrixType,
	#superclass : #SVGTransformType,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGMatrixType >> attribute [
	^'matrix'
]

{ #category : #printing }
SVGMatrixType >> contentsAsString [
	| resultStream |
	resultStream := WriteStream on: String new.
	contents do: [:aNumber | resultStream nextPutAll: aNumber toSVGString] separatedBy: [resultStream nextPut: $ ].
	^resultStream contents
]
