Class {
	#name : #SVGMimeType,
	#superclass : #WAMimeType,
	#instVars : [
		'isBinary'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGMimeType >> isBinary [

	^ isBinary ifNil: [ false ]
]

{ #category : #accessing }
SVGMimeType >> isBinary: aBoolean [

	isBinary := aBoolean
]
