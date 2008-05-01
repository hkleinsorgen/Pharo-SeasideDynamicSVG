Class {
	#name : #SVGTextPositioningBrush,
	#superclass : #SVGTextBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #attributes }
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

{ #category : #attributes }
SVGTextPositioningBrush >> position: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #attributes }
SVGTextPositioningBrush >> rotate: aString [

	self attributeAt: 'rotate' put: aString
]

{ #category : #attributes }
SVGTextPositioningBrush >> shift: aPoint [

	self shiftX: aPoint x.
	self shiftY: aPoint y.
]

{ #category : #attributes }
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

{ #category : #attributes }
SVGTextPositioningBrush >> shiftX: aNumberOrString [

	self attributeAt: 'dx' put: aNumberOrString
]

{ #category : #attributes }
SVGTextPositioningBrush >> shiftY: aNumberOrString [

	self attributeAt: 'dy' put: aNumberOrString
]

{ #category : #attributes }
SVGTextPositioningBrush >> x: aNumberOrString [

	self attributeAt: 'x' put: aNumberOrString
]

{ #category : #attributes }
SVGTextPositioningBrush >> y: aNumberOrString [

	self attributeAt: 'y' put: aNumberOrString
]
