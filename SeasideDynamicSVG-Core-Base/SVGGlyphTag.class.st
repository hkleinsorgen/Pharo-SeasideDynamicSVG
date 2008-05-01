Class {
	#name : #SVGGlyphTag,
	#superclass : #SVGGlyphBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #attributes }
SVGGlyphTag >> arabicForm: aString [

	self attributeAt: 'arabic-form' put: aString
]

{ #category : #attributes }
SVGGlyphTag >> glyphName: aString [

	self attributeAt: 'glyph-name' put: aString
]

{ #category : #convenience }
SVGGlyphTag >> horizontal [

	self orientation: 'h'
]

{ #category : #attributes }
SVGGlyphTag >> languageCodes: aString [

	self attributeAt: 'lang' put: aString
]

{ #category : #attributes }
SVGGlyphTag >> orientation: aString [

	self attributeAt: 'orientation' put: aString
]

{ #category : #private }
SVGGlyphTag >> tag [

	^ 'glyph'
]

{ #category : #attributes }
SVGGlyphTag >> unicode: aString [

	self attributeAt: 'unicode' put: aString
]

{ #category : #convenience }
SVGGlyphTag >> vertical [

	self orientation: 'v'
]
