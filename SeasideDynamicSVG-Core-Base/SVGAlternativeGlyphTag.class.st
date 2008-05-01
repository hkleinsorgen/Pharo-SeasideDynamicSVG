Class {
	#name : #SVGAlternativeGlyphTag,
	#superclass : #SVGGlyphReferenceBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #attributes }
SVGAlternativeGlyphTag >> rotate: aString [

	self attributeAt: 'rotate' put: aString
]

{ #category : #accessing }
SVGAlternativeGlyphTag >> tag [

	^ 'altGlyph'
]
