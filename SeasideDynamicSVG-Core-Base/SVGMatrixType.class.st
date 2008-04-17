Class {
	#name : #SVGMatrixType,
	#superclass : #SVGTransformType,
	#category : #'SeasideDynamicSVG-Core-Transform'
}

{ #category : #accessing }
SVGMatrixType class >> attribute [
	^'matrix'
]

{ #category : #printing }
SVGMatrixType >> contentsAsString [
	| resultStream |
	resultStream := WriteStream on: String new.
	contents do: [:aNumber | resultStream nextPutAll: aNumber toSVGString] separatedBy: [resultStream nextPut: $ ].
	^resultStream contents
]
