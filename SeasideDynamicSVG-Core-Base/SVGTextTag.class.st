Class {
	#name : #SVGTextTag,
	#superclass : #SVGTextPositioningBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #'convenience-whitespace' }
SVGTextTag >> preserveWhitespace [

	self whitespace: 'preserve'
]

{ #category : #accessing }
SVGTextTag >> tag [

	^ 'text'
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
