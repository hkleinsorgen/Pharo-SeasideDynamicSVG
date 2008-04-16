Class {
	#name : #SVGClippingPathTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGClippingPathTag >> needsId [

	^ true
]

{ #category : #accessing }
SVGClippingPathTag >> tag [

	^ 'clipPath'
]

{ #category : #accessing }
SVGClippingPathTag >> units: aString [

	self attributeAt: 'clipPathUnits' put: aString
]
