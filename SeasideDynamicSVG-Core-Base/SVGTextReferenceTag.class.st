Class {
	#name : #SVGTextReferenceTag,
	#superclass : #SVGTextPositioningBrush,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #accessing }
SVGTextReferenceTag >> tag [

	^ 'tref'
]

{ #category : #attributes }
SVGTextReferenceTag >> text: aTextReference [ 
	self attributes 
		at: 'xlink:href'
		put: aTextReference toSVGURIReference
]
