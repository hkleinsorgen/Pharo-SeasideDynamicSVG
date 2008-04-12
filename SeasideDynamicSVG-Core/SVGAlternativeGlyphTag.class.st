Class {
	#name : #SVGAlternativeGlyphTag,
	#superclass : #SVGGlyphBrush,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGAlternativeGlyphTag >> rotate: aString [

	self attributeAt: 'rotate' put: aString
]

{ #category : #accessing }
SVGAlternativeGlyphTag >> tag [

	^ 'altGlyph'
]
