Class {
	#name : #SVGTextReferenceTag,
	#superclass : #SVGTextPositioningBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
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
