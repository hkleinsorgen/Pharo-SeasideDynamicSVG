Class {
	#name : #SVGTextBrush,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #'convencience-length adjust' }
SVGTextBrush >> adjustSpacing [

	self lengthAdjust: 'spacing'
]

{ #category : #'convencience-length adjust' }
SVGTextBrush >> adjustSpacingAndGlyphs [

	self lengthAdjust: 'spacingAndGlyphs'
]

{ #category : #accessing }
SVGTextBrush >> alignmentBaseline: aString [

	self attributeAt: 'alignment-baseline' put: aString
]

{ #category : #accessing }
SVGTextBrush >> baselineShift: aString [

	self attributeAt: 'baseline-shift' put: aString
]

{ #category : #'convenience-baseline shift' }
SVGTextBrush >> baselineShiftBaseline [

	self baselineShift: 'baseline'
]

{ #category : #'convenience-baseline shift' }
SVGTextBrush >> baselineShiftSub [ 

	self baselineShift: 'sub'
]

{ #category : #'convenience-baseline shift' }
SVGTextBrush >> baselineShiftSuper [

	self baselineShift: 'super'
]

{ #category : #'convenience-unicode bidirectional' }
SVGTextBrush >> bidirectionalEmbed [
	self unicodeBidirectional: 'embed'
]

{ #category : #'convenience-unicode bidirectional' }
SVGTextBrush >> bidirectionalNormal [
	self unicodeBidirectional: 'normal'
]

{ #category : #'convenience-unicode bidirectional' }
SVGTextBrush >> bidirectionalOverride [
	self unicodeBidirectional: 'override'
]

{ #category : #'convenience-weight' }
SVGTextBrush >> bold [
	self weight: 'bold '
]

{ #category : #'convenience-weight' }
SVGTextBrush >> bolder [
	self weight: 'bolder'
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> condensed [
	self stretch: 'condensed '
]

{ #category : #accessing }
SVGTextBrush >> decoration: aString [ 
	self 
		attributeAt: 'text-decoration'
		put: aString
]

{ #category : #accessing }
SVGTextBrush >> direction: aString [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "
	
	self attributeAt: 'direction' put: aString
]

{ #category : #accessing }
SVGTextBrush >> dominantBaseline: aString [ 

	self attributeAt: 'dominant-baseline' put: aString
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> expanded [
	self stretch: 'expanded'
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> extraCondensed [
	self stretch: 'extra-condensed'
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> extraExpanded [
	self stretch: 'extra-expanded'
]

{ #category : #accessing }
SVGTextBrush >> family: aString [ 
	self 
		attributeAt: 'font-family'
		put: aString 
]

{ #category : #accessing }
SVGTextBrush >> fontStyle: aString [ 
	self 
		attributeAt: 'font-style'
		put: aString 
]

{ #category : #accessing }
SVGTextBrush >> glyphOrientationHorizontal: angleString [ 
	"The value of the angle is restricted to 0, 90, 180, and 270 degrees. 
	The user agent shall round the value of the angle to the closest of the permitted values."

	self attributeAt: 'glyph-orientation-horizontal' put: angleString 
]

{ #category : #accessing }
SVGTextBrush >> glyphOrientationVertical: angleString [ 
	"The value of the angle is restricted to 0, 90, 180, and 270 degrees. 
	The user agent shall round the value of the angle to the closest of the permitted values."

	self attributeAt: 'glyph-orientation-vertical' put: angleString 
]

{ #category : #'convenience-style' }
SVGTextBrush >> italic [
	self fontStyle: 'italic'
]

{ #category : #accessing }
SVGTextBrush >> kerning: aLengthValue [

	self attributeAt: 'kerning' put: aLengthValue
]

{ #category : #'convenience-direction' }
SVGTextBrush >> leftToRight [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "

	self direction: 'ltr'
]

{ #category : #accessing }
SVGTextBrush >> lengthAdjust: aString [

	self attributeAt: 'lengthAdjust' put: aString
]

{ #category : #accessing }
SVGTextBrush >> letterSpacing: aLengthValue [

	self attributeAt: 'letter-spacing' put: aLengthValue
]

{ #category : #'convenience-weight' }
SVGTextBrush >> lighter [
	self weight: 'lighter'
]

{ #category : #'convenience-decoration' }
SVGTextBrush >> lineThrough [
	self decoration: 'line-through'
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> narrower [
	self stretch: 'narrower'
]

{ #category : #'convenience-style' }
SVGTextBrush >> oblique [
	self fontStyle: 'oblique'
]

{ #category : #'convenience-decoration' }
SVGTextBrush >> overline [
	self decoration: 'overline'
]

{ #category : #accessing }
SVGTextBrush >> rendering: aString [

	self attributeAt: 'text-rendering' put: aString
]

{ #category : #'convenience-direction' }
SVGTextBrush >> rightToLeft [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "

	self direction: 'rtl'
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> semiCondensed [
	self stretch: 'semi-condensed'
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> semiExpanded [
	self stretch: 'semi-expanded'
]

{ #category : #accessing }
SVGTextBrush >> size: aNumberOrString [

	self attributeAt: 'font-size' put: aNumberOrString 


]

{ #category : #accessing }
SVGTextBrush >> sizeAdjust: aNumberOrString [ 
	self 
		attributeAt: 'font-size-adjust'
		put: aNumberOrString 
]

{ #category : #'convenience-variant' }
SVGTextBrush >> smallCaps [
	self variant: 'small-caps'
]

{ #category : #convenience }
SVGTextBrush >> squeakFont: aFont [

	self 
"		family: aFont familyName;  "
		family: 'Tahoma, Arial, Helvetica, Helv, sans-serif, sans';  
		size: aFont pointSize+1.
]

{ #category : #accessing }
SVGTextBrush >> stretch: aString [ 
	self 
		attributeAt: 'font-stretch'
		put: aString 
]

{ #category : #accessing }
SVGTextBrush >> textAnchor: aString [

	self attributeAt: 'text-anchor' put: aString
]

{ #category : #'convenience-text anchor' }
SVGTextBrush >> textAnchorEnd [ 

	self textAnchor: 'end'
]

{ #category : #'convenience-text anchor' }
SVGTextBrush >> textAnchorMiddle [ 

	self textAnchor: 'middle'
]

{ #category : #'convenience-text anchor' }
SVGTextBrush >> textAnchorStart [

	self textAnchor: 'start'
]

{ #category : #accessing }
SVGTextBrush >> textLength: aNumber [

	self attributeAt: 'textLength' put: aNumber
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> ultraCondensed [
	self stretch: 'ultra-condensed'
]

{ #category : #'convenience-stretch' }
SVGTextBrush >> ultraExpanded [
	self stretch: 'ultra-expanded'
]

{ #category : #'convenience-decoration' }
SVGTextBrush >> underline [
	self decoration: 'underline'
]

{ #category : #accessing }
SVGTextBrush >> unicodeBidirectional: aString [ 
	self 
		attributeAt: 'unicode-bidi'
		put: aString
]

{ #category : #accessing }
SVGTextBrush >> variant: aString [ 
	self 
		attributeAt: 'font-variant'
		put: aString 
]

{ #category : #accessing }
SVGTextBrush >> weight: aString [ 
	self 
		attributeAt: 'font-weight'
		put: aString 
]

{ #category : #'convenience-font stretch' }
SVGTextBrush >> wider [
	self stretch: 'wider'
]

{ #category : #accessing }
SVGTextBrush >> wordSpacing: aStringOrNumber [

	self attributeAt: 'word-spacing' put: aStringOrNumber 
]

{ #category : #accessing }
SVGTextBrush >> wordWpacing: aLengthValue [

	self attributeAt: 'word-spacing' put: aLengthValue
]
