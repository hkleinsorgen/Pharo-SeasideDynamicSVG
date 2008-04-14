Class {
	#name : #SVGGlyphBrush,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #accessing }
SVGGlyphBrush >> format: aString [

	self attributeAt: 'format' put: aString
]

{ #category : #'convenience-glyph reference' }
SVGGlyphBrush >> glyphID: anID [ 
	" ID of the a referenced glyph "

	self url: '#' , anID toSVGString
]

{ #category : #accessing }
SVGGlyphBrush >> glyphPositions: somePoints [

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
SVGGlyphBrush >> glyphRef: aString [ 
	" hkl: from the w3c spec 
		'The glyph identifier, the format of which is dependent on the format of the given font.' 
	so is it an 'identifier', a 'reference' or a 'format' ? "
	self 
		attributeAt: 'glyph-ref'
		put: aString
]

{ #category : #accessing }
SVGGlyphBrush >> position: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #accessing }
SVGGlyphBrush >> shift: aPoint [

	self shiftX: aPoint x.
	self shiftY: aPoint y.
]

{ #category : #accessing }
SVGGlyphBrush >> shiftGlyphsBy: somePoints [ 
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
SVGGlyphBrush >> shiftX: aNumberOrString [

	self attributeAt: 'dx' put: aNumberOrString
]

{ #category : #accessing }
SVGGlyphBrush >> shiftY: aNumberOrString [

	self attributeAt: 'dy' put: aNumberOrString
]

{ #category : #accessing }
SVGGlyphBrush >> url: anURIOrString [
	" URI of a glyph or alternative glyph definition "

	self attributes at: 'xlink:href' put: anURIOrString
]

{ #category : #accessing }
SVGGlyphBrush >> x: aNumberOrString [

	self attributeAt: 'x' put: aNumberOrString
]

{ #category : #accessing }
SVGGlyphBrush >> y: aNumberOrString [

	self attributeAt: 'y' put: aNumberOrString
]
