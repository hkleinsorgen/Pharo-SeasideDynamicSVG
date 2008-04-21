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
SVGTextBrush >> rendering: aString [

	self attributeAt: 'text-rendering' put: aString
]

{ #category : #accessing }
SVGTextBrush >> textLength: aNumber [

	self attributeAt: 'textLength' put: aNumber
]
