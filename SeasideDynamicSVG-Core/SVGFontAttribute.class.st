Class {
	#name : #SVGFontAttribute,
	#superclass : #SVGAttribute,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'convenience-weight' }
SVGFontAttribute >> bold [ 

	self fontWeight: 'bold '
]

{ #category : #'convenience-weight' }
SVGFontAttribute >> bolder [ 

	self fontWeight: 'bolder'
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> condensed [ 

	self fontStretch: 'condensed '
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> expanded [ 

	self fontStretch: 'expanded'
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> extraCondensed [

	self fontStretch: 'extra-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> extraExpanded [

	self fontStretch: 'extra-expanded'
]

{ #category : #accessing }
SVGFontAttribute >> font: aString [

	self attributeAt: 'font' put: aString svgAttributeValue
]

{ #category : #accessing }
SVGFontAttribute >> fontFamily: aString [

	self attributeAt: 'font-family' put: aString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttribute >> fontSize: aNumberOrString [

	self attributeAt: 'font-size' put: aNumberOrString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttribute >> fontSizeAdjust: aNumberOrString [

	self attributeAt: 'font-size-adjust' put: aNumberOrString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttribute >> fontStretch: aString [

	self attributeAt: 'font-stretch' put: aString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttribute >> fontStyle: aString [

	self attributeAt: 'font-style' put: aString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttribute >> fontVariant: aString [

	self attributeAt: 'font-variant' put: aString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttribute >> fontWeight: aString [

	self attributeAt: 'font-weight' put: aString svgAttributeValue


]

{ #category : #'convenience-style' }
SVGFontAttribute >> italic [

	self fontStyle: 'italic'
]

{ #category : #accessing }
SVGFontAttribute >> kerning: aStringOrNumber [

	self attributeAt: 'kerning' put: aStringOrNumber svgAttributeValue
]

{ #category : #accessing }
SVGFontAttribute >> letterSpacing: aStringOrNumber [

	self attributeAt: 'letter-spacing' put: aStringOrNumber svgAttributeValue
]

{ #category : #'convenience-weight' }
SVGFontAttribute >> lighter [

	self fontWeight: 'lighter'
]

{ #category : #'convenience-decoration' }
SVGFontAttribute >> lineThrough [ 

	self textDecoration: 'line-through'
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> narrower [

	self fontStretch: 'narrower'
]

{ #category : #'convenience-style' }
SVGFontAttribute >> oblique [

	self fontStyle: 'oblique'
]

{ #category : #'convenience-decoration' }
SVGFontAttribute >> overline [ 

	self textDecoration: 'overline'
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> semiCondensed [

	self fontStretch: 'semi-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> semiExpanded [

	self fontStretch: 'semi-expanded'
]

{ #category : #'convenience-variant' }
SVGFontAttribute >> smallCaps [

	self fontVariant: 'small-caps'
]

{ #category : #accessing }
SVGFontAttribute >> textDecoration: aString [

	self attributeAt: 'text-decoration' put: aString svgAttributeValue
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> ultraCondensed [

	self fontStretch: 'ultra-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttribute >> ultraExpanded [

	self fontStretch: 'ultra-expanded'
]

{ #category : #'convenience-decoration' }
SVGFontAttribute >> underline [ 

	self textDecoration: 'underline'
]

{ #category : #'convenience-font stretch' }
SVGFontAttribute >> wider [

	self fontStretch: 'wider'
]

{ #category : #accessing }
SVGFontAttribute >> wordSpacing: aStringOrNumber [

	self attributeAt: 'word-spacing' put: aStringOrNumber svgAttributeValue
]
