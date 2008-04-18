Class {
	#name : #SVGTextPathTag,
	#superclass : #SVGTextBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #'convenience-method' }
SVGTextPathTag >> align [

	self method: 'align'
]

{ #category : #'convenience-spacing' }
SVGTextPathTag >> exact [

	self spacing: 'exact'
]

{ #category : #accessing }
SVGTextPathTag >> method: aString [

	self attributeAt: 'method' put: aString
]

{ #category : #accessing }
SVGTextPathTag >> path: aPathReference [ 
	self attributes 
		at: 'xlink:href'
		put: aPathReference toSVGIDReference
]

{ #category : #accessing }
SVGTextPathTag >> spacing: aString [

	self attributeAt: 'spacing' put: aString
]

{ #category : #accessing }
SVGTextPathTag >> startOffset: aLengthValue [

	self attributeAt: 'startOffset' put: aLengthValue
]

{ #category : #'convenience-method' }
SVGTextPathTag >> stretch [

	self method: 'stretch'
]

{ #category : #accessing }
SVGTextPathTag >> tag [

	^ 'textPath'
]
