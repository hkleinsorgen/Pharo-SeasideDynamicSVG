Extension { #name : #Rectangle }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Rectangle >> toSVGStrokeCoordinates [
	" assume that the coordiante system of this rectangle is a classic pixmap-based one "

	^ self species 
		origin: self origin toSVGStrokeCoordinates
		extent: self extent
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Rectangle >> toSVGViewBoxString [

	| str |
	str := String new writeStream.
	str nextPutAll: self left toSVGString.
	str nextPut: $,.
	str nextPutAll: self top toSVGString.
	str nextPut: $,.
	str nextPutAll: self width toSVGString.
	str nextPut: $,.
	str nextPutAll: self height toSVGString.
	^ str contents
]
