Class {
	#name : #SVGTextPathTag,
	#superclass : #SVGTextBrush,
	#category : #'SeasideDynamicSVG-Core'
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

{ #category : #'convenience-reference' }
SVGTextPathTag >> pathID: anID [ 
	" ID of the referenced path "

	self url: '#' , anID toSVGString
]

{ #category : #accessing }
SVGTextPathTag >> spacing: aString [

	self attributeAt: 'spacing' put: aString
]

{ #category : #accessing }
SVGTextPathTag >> startOffset: aLengthValue [

	self attributeAt: 'start-offset' put: aLengthValue
]

{ #category : #'convenience-method' }
SVGTextPathTag >> stretch [

	self method: 'stretch'
]

{ #category : #accessing }
SVGTextPathTag >> tag [

	^ 'textPath'
]

{ #category : #accessing }
SVGTextPathTag >> url: anURIOrString [
	" URI of the referenced path "

	self attributes at: 'xlink:href' put: anURIOrString
]
