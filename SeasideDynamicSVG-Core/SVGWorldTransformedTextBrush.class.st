Class {
	#name : #SVGWorldTransformedTextBrush,
	#superclass : #SVGTextBrush,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGWorldTransformedTextBrush >> position: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> rotate: aString [

	self attributeAt: 'rotate' put: aString
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> shift: aPoint [

	self shiftX: aPoint x.
	self shiftY: aPoint y.
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> shiftX: aNumber [

	self attributeAt: 'dx' put: aNumber
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> shiftY: aNumber [

	self attributeAt: 'dy' put: aNumber
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> x: aNumber [

	self attributeAt: 'x' put: aNumber
]

{ #category : #accessing }
SVGWorldTransformedTextBrush >> y: aNumber [

	self attributeAt: 'y' put: aNumber
]
