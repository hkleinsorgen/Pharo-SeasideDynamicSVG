Class {
	#name : #SVGTextTag,
	#superclass : #SVGTag,
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

{ #category : #'accessing-attribute sets' }
SVGTextTag >> font [
	^ self attributeSetAt: SVGFontAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGTextTag >> font: aBlock [
	aBlock value: self font
]

{ #category : #'convenience-writing mode' }
SVGTextTag >> leftToRight [

	self writingMode: 'lr'
]

{ #category : #'convenience-writing mode' }
SVGTextTag >> leftToRightTopToBottom [

	self writingMode: 'lr-tb'
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

{ #category : #'convenience-writing mode' }
SVGTextTag >> rightToLeft [

	self writingMode: 'rl'
]

{ #category : #'convenience-writing mode' }
SVGTextTag >> rightToLeftTopToBottom [

	self writingMode: 'rl-tb'
]

{ #category : #accessing }
SVGTextTag >> rotate: aString [

	self attributeAt: 'rotate' put: aString
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
SVGTextTag >> tag [

	^ 'text'
]

{ #category : #'accessing-attribute sets' }
SVGTextTag >> textContent [

	^ self attributeSetAt: SVGTextContentAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGTextTag >> textContent: aBlock [

	^ aBlock value: self textContent
]

{ #category : #accessing }
SVGTextTag >> textLength: aNumber [

	self attributeAt: 'textLength' put: aNumber
]

{ #category : #'convenience-writing mode' }
SVGTextTag >> topToBottom [

	self writingMode: 'tb'
]

{ #category : #'convenience-writing mode' }
SVGTextTag >> topToBottomRightToLeft [

	self writingMode: 'tb-rl'
]

{ #category : #accessing }
SVGTextTag >> writingMode: aString [
	" also see SVGTextContentAttributeSet, #unicodeBidirectional: and #direction:"
	
	self attributeAt: 'writing-mode' put: aString
]

{ #category : #accessing }
SVGTextTag >> x: aNumber [

	self attributeAt: 'x' put: aNumber
]

{ #category : #accessing }
SVGTextTag >> y: aNumber [

	self attributeAt: 'y' put: aNumber
]
