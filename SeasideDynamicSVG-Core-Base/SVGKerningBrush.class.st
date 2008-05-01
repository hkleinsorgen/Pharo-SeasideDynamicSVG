Class {
	#name : #SVGKerningBrush,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #attributes }
SVGKerningBrush >> firstGlyphNames: aString [

	self attributeAt: 'g1' put: aString
]

{ #category : #attributes }
SVGKerningBrush >> firstUnicodeCharacters: aString [

	self attributeAt: 'u1' put: aString
]

{ #category : #attributes }
SVGKerningBrush >> kerning: aNumber [

	self attributeAt: 'k' put: aNumber
]

{ #category : #attributes }
SVGKerningBrush >> secondGlyphNames: aString [

	self attributeAt: 'g2' put: aString
]

{ #category : #attributes }
SVGKerningBrush >> secondUnicodeCharacters: aString [

	self attributeAt: 'u2' put: aString
]
