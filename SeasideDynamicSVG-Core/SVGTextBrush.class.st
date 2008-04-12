Class {
	#name : #SVGTextBrush,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'convencience-length adjust' }
SVGTextBrush >> adjustSpacing [

	self lengthAdjust: 'spacing'
]

{ #category : #'convencience-length adjust' }
SVGTextBrush >> adjustSpacingAndGlyphs [

	self lengthAdjust: 'spacingAndGlyphs'
]

{ #category : #'accessing-attribute sets' }
SVGTextBrush >> content [

	^ self attributeSetAt: SVGTextContentAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGTextBrush >> content: aBlock [

	^ aBlock value: self content
]

{ #category : #'accessing-attribute sets' }
SVGTextBrush >> font [
	^ self attributeSetAt: SVGFontAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGTextBrush >> font: aBlock [
	aBlock value: self font
]

{ #category : #accessing }
SVGTextBrush >> lengthAdjust: aString [

	self attributeAt: 'lengthAdjust' put: aString
]

{ #category : #accessing }
SVGTextBrush >> position: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #accessing }
SVGTextBrush >> rotate: aString [

	self attributeAt: 'rotate' put: aString
]

{ #category : #accessing }
SVGTextBrush >> shift: aPoint [

	self shiftX: aPoint x.
	self shiftY: aPoint y.
]

{ #category : #accessing }
SVGTextBrush >> shiftX: aNumber [

	self attributeAt: 'dx' put: aNumber
]

{ #category : #accessing }
SVGTextBrush >> shiftY: aNumber [

	self attributeAt: 'dy' put: aNumber
]

{ #category : #accessing }
SVGTextBrush >> textLength: aNumber [

	self attributeAt: 'textLength' put: aNumber
]

{ #category : #accessing }
SVGTextBrush >> x: aNumber [

	self attributeAt: 'x' put: aNumber
]

{ #category : #accessing }
SVGTextBrush >> y: aNumber [

	self attributeAt: 'y' put: aNumber
]
