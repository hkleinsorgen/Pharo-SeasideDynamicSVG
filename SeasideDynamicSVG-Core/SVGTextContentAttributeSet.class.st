Class {
	#name : #SVGTextContentAttributeSet,
	#superclass : #SVGAttributeSet,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #accessing }
SVGTextContentAttributeSet >> alignmentBaseline: aString [

	self attributeAt: 'alignment-baseline' put: aString
]

{ #category : #accessing }
SVGTextContentAttributeSet >> baselineShift: aString [

	self attributeAt: 'baseline-shift' put: aString
]

{ #category : #'convenience-baseline shift' }
SVGTextContentAttributeSet >> baselineShiftBaseline [

	self baselineShift: 'baseline'
]

{ #category : #'convenience-baseline shift' }
SVGTextContentAttributeSet >> baselineShiftSub [ 

	self baselineShift: 'sub'
]

{ #category : #'convenience-baseline shift' }
SVGTextContentAttributeSet >> baselineShiftSuper [

	self baselineShift: 'super'
]

{ #category : #'convenience-unicode bidirectional' }
SVGTextContentAttributeSet >> bidirectionalEmbed [
	self unicodeBidirectional: 'embed'
]

{ #category : #'convenience-unicode bidirectional' }
SVGTextContentAttributeSet >> bidirectionalNormal [
	self unicodeBidirectional: 'normal'
]

{ #category : #'convenience-unicode bidirectional' }
SVGTextContentAttributeSet >> bidirectionalOverride [
	self unicodeBidirectional: 'override'
]

{ #category : #accessing }
SVGTextContentAttributeSet >> decoration: aString [ 
	self 
		attributeAt: 'text-decoration'
		put: aString
]

{ #category : #accessing }
SVGTextContentAttributeSet >> direction: aString [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "
	
	self attributeAt: 'direction' put: aString
]

{ #category : #accessing }
SVGTextContentAttributeSet >> dominantBaseline: aString [ 

	self attributeAt: 'dominant-baseline' put: aString
]

{ #category : #'convenience-glyph orientation' }
SVGTextContentAttributeSet >> glyphOrientationHorizontal0Degrees [

	self glyphOrientationHorizontal: '0deg' 
]

{ #category : #'convenience-glyph orientation' }
SVGTextContentAttributeSet >> glyphOrientationHorizontal180Degrees [

	self glyphOrientationHorizontal: '180deg' 
]

{ #category : #'convenience-glyph orientation' }
SVGTextContentAttributeSet >> glyphOrientationHorizontal270Degrees [

	self glyphOrientationHorizontal: '270deg' 
]

{ #category : #'convenience-glyph orientation' }
SVGTextContentAttributeSet >> glyphOrientationHorizontal90Degrees [

	self glyphOrientationHorizontal: '90deg' 
]

{ #category : #accessing }
SVGTextContentAttributeSet >> glyphOrientationHorizontal: angleString [ 
	"The value of the angle is restricted to 0, 90, 180, and 270 degrees. 
	The user agent shall round the value of the angle to the closest of the permitted values."

	self attributeAt: 'glyph-orientation-horizontal' put: angleString 
]

{ #category : #'convenience-glyph orientation' }
SVGTextContentAttributeSet >> glyphOrientationVertical0Degrees [

	self glyphOrientationVertical: '0deg' 
]

{ #category : #'convenience-glyph orientation' }
SVGTextContentAttributeSet >> glyphOrientationVertical180Degrees [

	self glyphOrientationVertical: '180deg' 
]

{ #category : #'convenience-glyph orientation' }
SVGTextContentAttributeSet >> glyphOrientationVertical270Degrees [

	self glyphOrientationVertical: '270deg' 
]

{ #category : #'convenience-glyph orientation' }
SVGTextContentAttributeSet >> glyphOrientationVertical90Degrees [

	self glyphOrientationVertical: '90deg' 
]

{ #category : #accessing }
SVGTextContentAttributeSet >> glyphOrientationVertical: angleString [ 
	"The value of the angle is restricted to 0, 90, 180, and 270 degrees. 
	The user agent shall round the value of the angle to the closest of the permitted values."

	self attributeAt: 'glyph-orientation-vertical' put: angleString 
]

{ #category : #accessing }
SVGTextContentAttributeSet >> kerning: aLengthValue [

	self attributeAt: 'kerning' put: aLengthValue
]

{ #category : #'convenience-direction' }
SVGTextContentAttributeSet >> leftToRight [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "

	self direction: 'ltr'
]

{ #category : #accessing }
SVGTextContentAttributeSet >> letterSpacing: aLengthValue [

	self attributeAt: 'letter-spacing' put: aLengthValue
]

{ #category : #'convenience-decoration' }
SVGTextContentAttributeSet >> lineThrough [
	self decoration: 'line-through'
]

{ #category : #'convenience-decoration' }
SVGTextContentAttributeSet >> overline [
	self decoration: 'overline'
]

{ #category : #'convenience-direction' }
SVGTextContentAttributeSet >> rightToLeft [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "

	self direction: 'rtl'
]

{ #category : #accessing }
SVGTextContentAttributeSet >> textAnchor: aString [

	self attributeAt: 'text-anchor' put: aString
]

{ #category : #'convenience-text anchor' }
SVGTextContentAttributeSet >> textAnchorEnd [ 

	self textAnchor: 'end'
]

{ #category : #'convenience-text anchor' }
SVGTextContentAttributeSet >> textAnchorMiddle [ 

	self textAnchor: 'middle'
]

{ #category : #'convenience-text anchor' }
SVGTextContentAttributeSet >> textAnchorStart [

	self textAnchor: 'start'
]

{ #category : #'convenience-decoration' }
SVGTextContentAttributeSet >> underline [
	self decoration: 'underline'
]

{ #category : #accessing }
SVGTextContentAttributeSet >> unicodeBidirectional: aString [ 
	self 
		attributeAt: 'unicode-bidi'
		put: aString
]

{ #category : #accessing }
SVGTextContentAttributeSet >> wordWpacing: aLengthValue [

	self attributeAt: 'word-spacing' put: aLengthValue
]
