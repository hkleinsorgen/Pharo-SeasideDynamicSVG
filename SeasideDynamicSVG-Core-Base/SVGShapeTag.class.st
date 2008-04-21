Class {
	#name : #SVGShapeTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGShapeTag >> rendering: aString [

	self attributeAt: 'shape-rendering' put: aString
]
