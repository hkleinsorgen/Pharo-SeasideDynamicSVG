Class {
	#name : #SVGTextBrush,
	#superclass : #SVGFontRelatedBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #'convenience-length adjust' }
SVGTextBrush >> adjustSpacing [

	self lengthAdjust: 'spacing'
]

{ #category : #'convenience-length adjust' }
SVGTextBrush >> adjustSpacingAndGlyphs [

	self lengthAdjust: 'spacingAndGlyphs'
]

{ #category : #attributes }
SVGTextBrush >> alignmentBaseline: aString [

	self attributeAt: 'alignment-baseline' put: aString
]

{ #category : #attributes }
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

{ #category : #attributes }
SVGTextBrush >> decoration: aString [ 
	self 
		attributeAt: 'text-decoration'
		put: aString
]

{ #category : #attributes }
SVGTextBrush >> direction: aString [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "
	
	self attributeAt: 'direction' put: aString
]

{ #category : #attributes }
SVGTextBrush >> dominantBaseline: aString [ 

	self attributeAt: 'dominant-baseline' put: aString
]

{ #category : #deprecated }
SVGTextBrush >> family: aString [ 

	self greaseDeprecatedApi: 'SVGTextBrush>>#family:' details: 'Use #fontSFamily:.'.
	self fontFamily: aString
]

{ #category : #attributes }
SVGTextBrush >> glyphOrientationHorizontal: angleString [ 
	"The value of the angle is restricted to 0, 90, 180, and 270 degrees. 
	The user agent shall round the value of the angle to the closest of the permitted values."

	self attributeAt: 'glyph-orientation-horizontal' put: angleString 
]

{ #category : #attributes }
SVGTextBrush >> glyphOrientationVertical: angleString [ 
	"The value of the angle is restricted to 0, 90, 180, and 270 degrees. 
	The user agent shall round the value of the angle to the closest of the permitted values."

	self attributeAt: 'glyph-orientation-vertical' put: angleString 
]

{ #category : #attributes }
SVGTextBrush >> kerning: aLengthValue [

	self attributeAt: 'kerning' put: aLengthValue
]

{ #category : #'convenience-direction' }
SVGTextBrush >> leftToRight [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "

	self direction: 'ltr'
]

{ #category : #attributes }
SVGTextBrush >> lengthAdjust: aString [

	self attributeAt: 'lengthAdjust' put: aString
]

{ #category : #attributes }
SVGTextBrush >> letterSpacing: aLengthValue [

	self attributeAt: 'letter-spacing' put: aLengthValue
]

{ #category : #'convenience-decoration' }
SVGTextBrush >> lineThrough [
	self decoration: 'line-through'
]

{ #category : #'convenience-decoration' }
SVGTextBrush >> overline [
	self decoration: 'overline'
]

{ #category : #attributes }
SVGTextBrush >> rendering: aString [

	self attributeAt: 'text-rendering' put: aString
]

{ #category : #'convenience-direction' }
SVGTextBrush >> rightToLeft [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "

	self direction: 'rtl'
]

{ #category : #deprecated }
SVGTextBrush >> size: aNumberOrString [

	self greaseDeprecatedApi: 'SVGTextBrush>>#size:' details: 'Use #fontSize:.'.
	self fontSize: aNumberOrString
]

{ #category : #attributes }
SVGTextBrush >> sizeAdjust: aNumberOrString [ 
	self 
		attributeAt: 'font-size-adjust'
		put: aNumberOrString 
]

{ #category : #convenience }
SVGTextBrush >> squeakFont: aFont [

	self 
		fontFamily: aFont familyName;  
		fontSize: aFont pointSize+1.
]

{ #category : #deprecated }
SVGTextBrush >> stretch: aString [ 

	self greaseDeprecatedApi: 'SVGTextBrush>>#stretch:' details: 'Use #fontStretch:.'.
	self fontStretch: aString
]

{ #category : #attributes }
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

{ #category : #attributes }
SVGTextBrush >> textLength: aNumber [

	self attributeAt: 'textLength' put: aNumber
]

{ #category : #'convenience-decoration' }
SVGTextBrush >> underline [
	self decoration: 'underline'
]

{ #category : #attributes }
SVGTextBrush >> unicodeBidirectional: aString [ 
	self 
		attributeAt: 'unicode-bidi'
		put: aString
]

{ #category : #deprecated }
SVGTextBrush >> variant: aString [ 

	self greaseDeprecatedApi: 'SVGTextBrush>>#variant:' details: 'Use #fontVariant:.'.
	self fontVariant: aString 
]

{ #category : #deprecated }
SVGTextBrush >> weight: aString [ 

	self greaseDeprecatedApi: 'SVGTextBrush>>#weight:' details: 'Use #fontWeight:.'.
	self fontWeight: aString 
]

{ #category : #attributes }
SVGTextBrush >> wordSpacing: aStringOrNumber [

	self attributeAt: 'word-spacing' put: aStringOrNumber 
]

{ #category : #attributes }
SVGTextBrush >> wordWpacing: aLengthValue [

	self attributeAt: 'word-spacing' put: aLengthValue
]
