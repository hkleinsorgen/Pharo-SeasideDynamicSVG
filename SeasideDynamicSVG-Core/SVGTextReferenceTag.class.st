Class {
	#name : #SVGTextReferenceTag,
	#superclass : #SVGWorldTransformedTextBrush,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGTextReferenceTag >> tag [

	^ 'tref'
]

{ #category : #'convenience-reference' }
SVGTextReferenceTag >> textID: anID [ 
	" ID of the referenced text "

	self url: '#' , anID toSVGString
]

{ #category : #accessing }
SVGTextReferenceTag >> url: anURIOrString [
	" URI of the referenced text "

	self attributes at: 'xlink:href' put: anURIOrString
]
