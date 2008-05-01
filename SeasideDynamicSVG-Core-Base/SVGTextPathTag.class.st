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

{ #category : #attributes }
SVGTextPathTag >> method: aString [

	self attributeAt: 'method' put: aString
]

{ #category : #attributes }
SVGTextPathTag >> path: aPathReference [ 
	self attributes 
		at: 'xlink:href'
		put: aPathReference toSVGIDReference
]

{ #category : #attributes }
SVGTextPathTag >> spacing: aString [

	self attributeAt: 'spacing' put: aString
]

{ #category : #attributes }
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
