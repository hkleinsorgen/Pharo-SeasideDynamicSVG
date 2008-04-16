Class {
	#name : #SVGTextPositioningBrush,
	#superclass : #SVGTextBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #accessing }
SVGTextPositioningBrush >> glyphPositions: somePoints [

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
SVGTextPositioningBrush >> position: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #accessing }
SVGTextPositioningBrush >> rotate: aString [

	self attributeAt: 'rotate' put: aString
]

{ #category : #accessing }
SVGTextPositioningBrush >> shift: aPoint [

	self shiftX: aPoint x.
	self shiftY: aPoint y.
]

{ #category : #accessing }
SVGTextPositioningBrush >> shiftGlyphsBy: somePoints [ 
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
SVGTextPositioningBrush >> shiftX: aNumberOrString [

	self attributeAt: 'dx' put: aNumberOrString
]

{ #category : #accessing }
SVGTextPositioningBrush >> shiftY: aNumberOrString [

	self attributeAt: 'dy' put: aNumberOrString
]

{ #category : #accessing }
SVGTextPositioningBrush >> x: aNumberOrString [

	self attributeAt: 'x' put: aNumberOrString
]

{ #category : #accessing }
SVGTextPositioningBrush >> y: aNumberOrString [

	self attributeAt: 'y' put: aNumberOrString
]
