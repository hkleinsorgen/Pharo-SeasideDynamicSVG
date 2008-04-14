Class {
	#name : #SVGUseTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #'convenience-reference' }
SVGUseTag >> elementID: anID [ 
	" ID of the referenced element "

	self url: '#' , anID toSVGString
]

{ #category : #accessing }
SVGUseTag >> tag [

	^ 'use'
]

{ #category : #accessing }
SVGUseTag >> url: anURIOrString [
	" URI of the used element  "

	self attributes at: 'xlink:href' put: anURIOrString
]
