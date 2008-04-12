Class {
	#name : #SVGTransformList,
	#superclass : #OrderedCollection,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #printing }
SVGTransformList >> toSVGString [
	"tbd"
	| resultStream |
	resultStream := WriteStream on: String new.
	self do: [:aType | resultStream nextPutAll: aType toSVGString] separatedBy: [resultStream nextPut: $ ].
	^resultStream contents
]
