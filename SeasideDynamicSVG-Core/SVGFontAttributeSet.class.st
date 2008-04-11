Class {
	#name : #SVGFontAttributeSet,
	#superclass : #SVGAttributeSet,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'convenience-weight' }
SVGFontAttributeSet >> bold [ 

	self fontWeight: 'bold '
]

{ #category : #'convenience-weight' }
SVGFontAttributeSet >> bolder [ 

	self fontWeight: 'bolder'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> condensed [ 

	self fontStretch: 'condensed '
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> expanded [ 

	self fontStretch: 'expanded'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> extraCondensed [

	self fontStretch: 'extra-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> extraExpanded [

	self fontStretch: 'extra-expanded'
]

{ #category : #accessing }
SVGFontAttributeSet >> font: aString [

	self attributeAt: 'font' put: aString svgAttributeValue
]

{ #category : #accessing }
SVGFontAttributeSet >> fontFamily: aString [

	self attributeAt: 'font-family' put: aString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttributeSet >> fontSize: aNumberOrString [

	self attributeAt: 'font-size' put: aNumberOrString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttributeSet >> fontSizeAdjust: aNumberOrString [

	self attributeAt: 'font-size-adjust' put: aNumberOrString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttributeSet >> fontStretch: aString [

	self attributeAt: 'font-stretch' put: aString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttributeSet >> fontStyle: aString [

	self attributeAt: 'font-style' put: aString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttributeSet >> fontVariant: aString [

	self attributeAt: 'font-variant' put: aString svgAttributeValue


]

{ #category : #accessing }
SVGFontAttributeSet >> fontWeight: aString [

	self attributeAt: 'font-weight' put: aString svgAttributeValue


]

{ #category : #'convenience-style' }
SVGFontAttributeSet >> italic [

	self fontStyle: 'italic'
]

{ #category : #accessing }
SVGFontAttributeSet >> kerning: aStringOrNumber [

	self attributeAt: 'kerning' put: aStringOrNumber svgAttributeValue
]

{ #category : #accessing }
SVGFontAttributeSet >> letterSpacing: aStringOrNumber [

	self attributeAt: 'letter-spacing' put: aStringOrNumber svgAttributeValue
]

{ #category : #'convenience-weight' }
SVGFontAttributeSet >> lighter [

	self fontWeight: 'lighter'
]

{ #category : #'convenience-decoration' }
SVGFontAttributeSet >> lineThrough [ 

	self textDecoration: 'line-through'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> narrower [

	self fontStretch: 'narrower'
]

{ #category : #'convenience-style' }
SVGFontAttributeSet >> oblique [

	self fontStyle: 'oblique'
]

{ #category : #'convenience-decoration' }
SVGFontAttributeSet >> overline [ 

	self textDecoration: 'overline'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> semiCondensed [

	self fontStretch: 'semi-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> semiExpanded [

	self fontStretch: 'semi-expanded'
]

{ #category : #'convenience-variant' }
SVGFontAttributeSet >> smallCaps [

	self fontVariant: 'small-caps'
]

{ #category : #accessing }
SVGFontAttributeSet >> textDecoration: aString [

	self attributeAt: 'text-decoration' put: aString svgAttributeValue
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> ultraCondensed [

	self fontStretch: 'ultra-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> ultraExpanded [

	self fontStretch: 'ultra-expanded'
]

{ #category : #'convenience-decoration' }
SVGFontAttributeSet >> underline [ 

	self textDecoration: 'underline'
]

{ #category : #'convenience-font stretch' }
SVGFontAttributeSet >> wider [

	self fontStretch: 'wider'
]

{ #category : #accessing }
SVGFontAttributeSet >> wordSpacing: aStringOrNumber [

	self attributeAt: 'word-spacing' put: aStringOrNumber svgAttributeValue
]
