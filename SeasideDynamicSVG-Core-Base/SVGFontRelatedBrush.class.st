Class {
	#name : #SVGFontRelatedBrush,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #'convenience-weight' }
SVGFontRelatedBrush >> bold [
	self fontWeight: 'bold '
]

{ #category : #'convenience-weight' }
SVGFontRelatedBrush >> bolder [
	self fontWeight: 'bolder'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> condensed [
	self fontStretch: 'condensed'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> expanded [
	self fontStretch: 'expanded'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> extraCondensed [
	self fontStretch: 'extra-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> extraExpanded [
	self fontStretch: 'extra-expanded'
]

{ #category : #'attributes-font' }
SVGFontRelatedBrush >> fontFamily: aString [ 

	self 
		attributeAt: 'font-family'
		put: aString 
]

{ #category : #'attributes-font' }
SVGFontRelatedBrush >> fontSize: aNumberOrString [

	self attributeAt: 'font-size' put: aNumberOrString 


]

{ #category : #'attributes-font' }
SVGFontRelatedBrush >> fontStretch: aString [ 
	self 
		attributeAt: 'font-stretch'
		put: aString 
]

{ #category : #'attributes-font' }
SVGFontRelatedBrush >> fontStyle: aString [ 
	self 
		attributeAt: 'font-style'
		put: aString 
]

{ #category : #'attributes-font' }
SVGFontRelatedBrush >> fontVariant: aString [ 
	self 
		attributeAt: 'font-variant'
		put: aString 
]

{ #category : #'attributes-font' }
SVGFontRelatedBrush >> fontWeight: aString [ 
	self 
		attributeAt: 'font-weight'
		put: aString 
]

{ #category : #'convenience-style' }
SVGFontRelatedBrush >> italic [
	self fontStyle: 'italic'
]

{ #category : #'convenience-weight' }
SVGFontRelatedBrush >> lighter [
	self fontWeight: 'lighter'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> narrower [
	self fontStretch: 'narrower'
]

{ #category : #'convenience-style' }
SVGFontRelatedBrush >> oblique [
	self fontStyle: 'oblique'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> semiCondensed [
	self fontStretch: 'semi-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> semiExpanded [
	self fontStretch: 'semi-expanded'
]

{ #category : #'convenience-variant' }
SVGFontRelatedBrush >> smallCaps [
	self fontVariant: 'small-caps'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> ultraCondensed [
	self fontStretch: 'ultra-condensed'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> ultraExpanded [
	self fontStretch: 'ultra-expanded'
]

{ #category : #'convenience-stretch' }
SVGFontRelatedBrush >> wider [
	self fontStretch: 'wider'
]
