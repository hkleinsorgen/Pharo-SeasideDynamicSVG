Class {
	#name : #SVGTextTag,
	#superclass : #SVGWorldTransformedTextBrush,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'convenience-writing mode' }
SVGTextTag >> leftToRight [

	self writingMode: 'lr'
]

{ #category : #'convenience-writing mode' }
SVGTextTag >> leftToRightTopToBottom [

	self writingMode: 'lr-tb'
]

{ #category : #'conveience-whitespace' }
SVGTextTag >> preserveWhitespace [

	self whitespace: 'preserve'
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
SVGTextTag >> tag [

	^ 'text'
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
SVGTextTag >> whitespace: aString [

	self attributeAt: 'xml:space' put: aString
]

{ #category : #accessing }
SVGTextTag >> writingMode: aString [
	" also see SVGTextContentAttributeSet, #unicodeBidirectional: and #direction:"
	
	self attributeAt: 'writing-mode' put: aString
]
