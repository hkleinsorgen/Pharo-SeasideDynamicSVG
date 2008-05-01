Class {
	#name : #SVGFontFaceTag,
	#superclass : #SVGFontRelatedBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #attributes }
SVGFontFaceTag >> accentHeight: aNumber [

	self attributeAt: 'accent-height' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> alphabetic: aNumber [

	self attributeAt: 'alphabetic' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> ascent: aNumber [

	self attributeAt: 'ascent' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> boundingBox: aString [

	self attributeAt: 'bbox' put: aString
]

{ #category : #attributes }
SVGFontFaceTag >> capHeight: aNumber [

	self attributeAt: 'cap-height' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> descent: aNumber [

	self attributeAt: 'descent' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> hanging: aNumber [

	self attributeAt: 'hanging' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> horizontalStemWidth: aNumber [

	self attributeAt: 'stemh' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> ideographic: aNumber [

	self attributeAt: 'ideographic' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> mathematical: aNumber [

	self attributeAt: 'mathematical' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> overlinePosition: aNumber [

	self attributeAt: 'overline-position' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> overlineThickness: aNumber [

	self attributeAt: 'overline-thickness' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> panose: aString [

	self attributeAt: 'panose-1' put: aString
]

{ #category : #attributes }
SVGFontFaceTag >> slope: aNumber [

	self attributeAt: 'slope' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> strikethroughPosition: aNumber [

	self attributeAt: 'strikethrough-position' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> strikethroughThickness: aNumber [

	self attributeAt: 'strikethrough-thickness' put: aNumber
]

{ #category : #private }
SVGFontFaceTag >> tag [

	^ 'font-face'
]

{ #category : #attributes }
SVGFontFaceTag >> underlinePosition: aNumber [

	self attributeAt: 'underline-position' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> underlineThickness: aNumber [

	self attributeAt: 'underline-thickness' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> unicodeRange: aString [

	self attributeAt: 'unicode-range' put: aString
]

{ #category : #attributes }
SVGFontFaceTag >> unitsPerEm: aNumber [

	self attributeAt: 'units-per-em' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> verticalAlphabetic: aNumber [

	self attributeAt: 'v-alphabetic' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> verticalHanging: aNumber [

	self attributeAt: 'v-hanging' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> verticalIdeographic: aNumber [

	self attributeAt: 'v-ideographic' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> verticalMathematical: aNumber [

	self attributeAt: 'v-mathematical' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> verticalStemWidth: aNumber [

	self attributeAt: 'stemv' put: aNumber
]

{ #category : #attributes }
SVGFontFaceTag >> widths: aString [

	self attributeAt: 'widths ' put: aString
]

{ #category : #attributes }
SVGFontFaceTag >> xHeight: aNumber [

	self attributeAt: 'x-height' put: aNumber
]
