Class {
	#name : #SVGTextTag,
	#superclass : #SVGTag,
	#instVars : [
		'font'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'convencience-length adjust' }
SVGTextTag >> adjustSpacing [

	self lengthAdjust: 'spacing'
]

{ #category : #'convencience-length adjust' }
SVGTextTag >> adjustSpacingAndGlyphs [

	self lengthAdjust: 'spacingAndGlyphs'
]

{ #category : #accessing }
SVGTextTag >> font [
	^ self attributeSetAt: SVGFontAttributeSet
]

{ #category : #accessing }
SVGTextTag >> font: aBlock [
	aBlock value: self font
]

{ #category : #accessing }
SVGTextTag >> lengthAdjust: aString [

	self attributeAt: 'lengthAdjust' put: aString
]

{ #category : #accessing }
SVGTextTag >> position: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #accessing }
SVGTextTag >> rotate: aNumber [

	self attributeAt: 'rotate' put: aNumber
]

{ #category : #accessing }
SVGTextTag >> shift: aPoint [

	self shiftX: aPoint x.
	self shiftY: aPoint y.
]

{ #category : #accessing }
SVGTextTag >> shiftX: aNumber [

	self attributeAt: 'dx' put: aNumber
]

{ #category : #accessing }
SVGTextTag >> shiftY: aNumber [

	self attributeAt: 'dy' put: aNumber
]

{ #category : #accessing }
SVGTextTag >> textLength: aNumber [

	self attributeAt: 'textLength' put: aNumber
]

{ #category : #accessing }
SVGTextTag >> x: aNumber [

	self attributeAt: 'x' put: aNumber
]

{ #category : #accessing }
SVGTextTag >> y: aNumber [

	self attributeAt: 'y' put: aNumber
]
