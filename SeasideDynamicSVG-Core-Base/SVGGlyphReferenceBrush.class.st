Class {
	#name : #SVGGlyphReferenceBrush,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #attributes }
SVGGlyphReferenceBrush >> format: aString [

	self attributeAt: 'format' put: aString
]

{ #category : #'convenience-glyph reference' }
SVGGlyphReferenceBrush >> glyphID: anID [ 
	" ID of the a referenced glyph "

	self url: '#' , anID toSVGString
]

{ #category : #attributes }
SVGGlyphReferenceBrush >> glyphPositions: somePoints [

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
SVGGlyphReferenceBrush >> glyphRef: aString [ 
	" hkl: from the w3c spec 
		'The glyph identifier, the format of which is dependent on the format of the given font.' 
	so is it an 'identifier', a 'reference' or a 'format' ? "
	self 
		attributeAt: 'glyph-ref'
		put: aString
]

{ #category : #attributes }
SVGGlyphReferenceBrush >> position: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #attributes }
SVGGlyphReferenceBrush >> shift: aPoint [

	self shiftX: aPoint x.
	self shiftY: aPoint y.
]

{ #category : #attributes }
SVGGlyphReferenceBrush >> shiftGlyphsBy: somePoints [ 
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
SVGGlyphReferenceBrush >> shiftX: aNumberOrString [

	self attributeAt: 'dx' put: aNumberOrString
]

{ #category : #attributes }
SVGGlyphReferenceBrush >> shiftY: aNumberOrString [

	self attributeAt: 'dy' put: aNumberOrString
]

{ #category : #attributes }
SVGGlyphReferenceBrush >> url: aGlyphReference [ 
	" URI of a glyph or alternative glyph definition "
	self attributes 
		at: 'xlink:href'
		put: aGlyphReference toSVGURIReference
]

{ #category : #attributes }
SVGGlyphReferenceBrush >> x: aNumberOrString [

	self attributeAt: 'x' put: aNumberOrString
]

{ #category : #attributes }
SVGGlyphReferenceBrush >> y: aNumberOrString [

	self attributeAt: 'y' put: aNumberOrString
]
