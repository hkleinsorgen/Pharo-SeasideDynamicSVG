Class {
	#name : #SVGWorldTransformedTextBrush,
	#superclass : #SVGTextBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #accessing }
SVGWorldTransformedTextBrush >> glyphPositions: somePoints [

	| xstr ystr |
	xstr := String new writeStream.
	ystr := String new writeStream.
	somePoints 
		do: [  : point |
			xstr nextPutAll: point x toSVGString.
			ystr nextPutAll: point y toSVGString.
		] 
		separatedBy: [ xstr space. ystr space ].
	self x: xstr contents.
	self y: xstr contents.
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> position: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> rotate: aString [

	self attributeAt: 'rotate' put: aString
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> shift: aPoint [

	self shiftX: aPoint x.
	self shiftY: aPoint y.
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> shiftGlyphsBy: somePoints [ 
	| xstr ystr |
	xstr := String new writeStream.
	ystr := String new writeStream.
	somePoints 
		do: 
			[ : point | 
			xstr nextPutAll: point x toSVGString.
			ystr nextPutAll: point y toSVGString ]
		separatedBy: 
			[ xstr space.
			ystr space ].
	self shiftX: xstr contents.
	self shiftY: xstr contents
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> shiftX: aNumberOrString [

	self attributeAt: 'dx' put: aNumberOrString
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> shiftY: aNumberOrString [

	self attributeAt: 'dy' put: aNumberOrString
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> x: aNumberOrString [

	self attributeAt: 'x' put: aNumberOrString
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> y: aNumberOrString [

	self attributeAt: 'y' put: aNumberOrString
]
