Class {
	#name : #SVGTextContentAttributeSet,
	#superclass : #SVGAttributeSet,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaseline [

	self alignmentBaseline: 'baseline'
]

{ #category : #accessing }
SVGTextContentAttributeSet >> alignmentBaseline: aString [

	self attributeAt: 'alignment-baseline' put: aString
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineAfterEdge [
	self alignmentBaseline: 'after-edge'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineAlphabetic [
	self alignmentBaseline: 'alphabetic'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineBeforeEdge [
	self alignmentBaseline: 'before-edge'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineCentral [
	self alignmentBaseline: 'central'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineHanging [
	self alignmentBaseline: 'hanging'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineMathematical [
	self alignmentBaseline: 'mathematical'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineMiddle [
	self alignmentBaseline: 'middle'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineTextAfterEdge [
	self alignmentBaseline: 'text-after-edge'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaselineTextBeforeEdge [
	self alignmentBaseline: 'text-before-edge'
]

{ #category : #'convenience-alignment baseline' }
SVGTextContentAttributeSet >> alignmentBaslineIdeographic [
	self alignmentBaseline: 'ideographic'
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
SVGTextContentAttributeSet >> direction: aString [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "
	
	self attributeAt: 'direction' put: aString
]

{ #category : #accessing }
SVGTextContentAttributeSet >> dominantBaseline: aString [ 

	self attributeAt: 'dominant-baseline' put: aString
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineAlphabetic [ 

	self dominantBaseline: 'alphabetic'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineCentral [ 

	self dominantBaseline: 'central'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineHanging [ 

	self dominantBaseline: 'hanging'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineIdeographic [ 

	self dominantBaseline: 'ideographic'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineMathematical [ 

	self dominantBaseline: 'mathematical'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineMiddle [ 

	self dominantBaseline: 'middle'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineNoChange [

	self dominantBaseline: 'no-change'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineResetSize [

	self dominantBaseline: 'reset-size'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineTextAfterEdge [

	self dominantBaseline: 'text-after-edge'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineTextBeforeEdge [

	self dominantBaseline: 'text-before-edge'
]

{ #category : #'convenience-dominant baseline' }
SVGTextContentAttributeSet >> dominantBaselineUseScript [

	self dominantBaseline: 'use-script'
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
SVGTextContentAttributeSet >> kerning: aNumberWithOptionalUnit [

	self attributeAt: 'kerning' put: aNumberWithOptionalUnit
]

{ #category : #'convenience-direction' }
SVGTextContentAttributeSet >> leftToRight [
	" note: For the 'direction' property to have any effect, the 'unicode-bidi' property's value must be 'embed' or 'bidi-override'. "

	self direction: 'ltr'
]

{ #category : #accessing }
SVGTextContentAttributeSet >> letterSpacing: aNumberWithOptionalUnit [

	self attributeAt: 'letter-spacing' put: aNumberWithOptionalUnit
]

{ #category : #'convenience-decoration' }
SVGTextContentAttributeSet >> lineThrough [ 

	self textDecoration: 'line-through'
]

{ #category : #'convenience-decoration' }
SVGTextContentAttributeSet >> overline [ 

	self textDecoration: 'overline'
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

{ #category : #accessing }
SVGTextContentAttributeSet >> textDecoration: aString [

	self attributeAt: 'text-decoration' put: aString
]

{ #category : #'convenience-decoration' }
SVGTextContentAttributeSet >> underline [ 

	self textDecoration: 'underline'
]

{ #category : #accessing }
SVGTextContentAttributeSet >> unicodeBidirectional: aString [ 
	self 
		attributeAt: 'unicode-bidi'
		put: aString
]

{ #category : #accessing }
SVGTextContentAttributeSet >> wordWpacing: aNumberWithOptionalUnit [

	self attributeAt: 'word-spacing' put: aNumberWithOptionalUnit
]
