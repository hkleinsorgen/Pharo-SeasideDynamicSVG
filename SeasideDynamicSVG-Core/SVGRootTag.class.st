Class {
	#name : #SVGRootTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #initialization }
SVGRootTag >> initialize [

	super initialize.
	self attributeAt: 'xmlns' put: SVGRoot defaultNamespace.
	self attributeAt: 'xmlns:xlink' put: SVGRoot xlinkNamespace.
]

{ #category : #accessing }
SVGRootTag >> tag [

	^ 'svg'
]
