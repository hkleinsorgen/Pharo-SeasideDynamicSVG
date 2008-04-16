Class {
	#name : #SVGUseTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #'convenience-reference' }
SVGUseTag >> element: anElementReference [ 
	self attributes 
		at: 'xlink:href'
		put: anElementReference toSVGIDReference
]

{ #category : #accessing }
SVGUseTag >> tag [

	^ 'use'
]
