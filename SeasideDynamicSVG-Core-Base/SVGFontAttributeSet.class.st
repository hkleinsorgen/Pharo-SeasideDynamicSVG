Class {
	#name : #SVGFontAttributeSet,
	#superclass : #SVGAttributeSet,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #'convenience-weight' }
SVGFontAttributeSet >> bold [
	self weight: 'bold '
]

{ #category : #'convenience-weight' }
SVGFontAttributeSet >> bolder [
	self weight: 'bolder'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> condensed [
	self stretch: 'condensed '
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> expanded [
	self stretch: 'expanded'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> extraCondensed [
	self stretch: 'extra-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> extraExpanded [
	self stretch: 'extra-expanded'
]

{ #category : #accessing }
SVGFontAttributeSet >> family: aString [ 
	self 
		attributeAt: 'font-family'
		put: aString 
]

{ #category : #'convenience-style' }
SVGFontAttributeSet >> italic [
	self style: 'italic'
]

{ #category : #accessing }
SVGFontAttributeSet >> kerning: aStringOrNumber [

	self attributeAt: 'kerning' put: aStringOrNumber 
]

{ #category : #accessing }
SVGFontAttributeSet >> letterSpacing: aStringOrNumber [

	self attributeAt: 'letter-spacing' put: aStringOrNumber 
]

{ #category : #'convenience-weight' }
SVGFontAttributeSet >> lighter [
	self weight: 'lighter'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> narrower [
	self stretch: 'narrower'
]

{ #category : #'convenience-style' }
SVGFontAttributeSet >> oblique [
	self style: 'oblique'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> semiCondensed [
	self stretch: 'semi-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> semiExpanded [
	self stretch: 'semi-expanded'
]

{ #category : #accessing }
SVGFontAttributeSet >> size: aNumberOrString [

	self attributeAt: 'font-size' put: aNumberOrString 


]

{ #category : #accessing }
SVGFontAttributeSet >> sizeAdjust: aNumberOrString [ 
	self 
		attributeAt: 'font-size-adjust'
		put: aNumberOrString 
]

{ #category : #'convenience-variant' }
SVGFontAttributeSet >> smallCaps [
	self variant: 'small-caps'
]

{ #category : #convenience }
SVGFontAttributeSet >> squeakFont: aFont [

	self 
"		family: aFont familyName;  "
		family: 'Arial';  
		size: aFont pointSize+1.
]

{ #category : #accessing }
SVGFontAttributeSet >> stretch: aString [ 
	self 
		attributeAt: 'font-stretch'
		put: aString 
]

{ #category : #accessing }
SVGFontAttributeSet >> style: aString [ 
	self 
		attributeAt: 'font-style'
		put: aString 
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> ultraCondensed [
	self stretch: 'ultra-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontAttributeSet >> ultraExpanded [
	self stretch: 'ultra-expanded'
]

{ #category : #accessing }
SVGFontAttributeSet >> variant: aString [ 
	self 
		attributeAt: 'font-variant'
		put: aString 
]

{ #category : #accessing }
SVGFontAttributeSet >> weight: aString [ 
	self 
		attributeAt: 'font-weight'
		put: aString 
]

{ #category : #'convenience-font stretch' }
SVGFontAttributeSet >> wider [
	self stretch: 'wider'
]

{ #category : #accessing }
SVGFontAttributeSet >> wordSpacing: aStringOrNumber [

	self attributeAt: 'word-spacing' put: aStringOrNumber 
]
