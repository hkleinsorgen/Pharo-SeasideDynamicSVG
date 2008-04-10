Class {
	#name : #SVGCircleTag,
	#superclass : #SVGShapeTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGCircleTag >> center: aPoint [
	self
		attributeAt: 'cx'
		put: aPoint x svgAttributeValue.
	self
		attributeAt: 'cy'
		put: aPoint y svgAttributeValue
]

{ #category : #accessing }
SVGCircleTag >> radius: aNumber [
	
	self attributeAt: 'r' put: aNumber svgAttributeValue
]

{ #category : #private }
SVGCircleTag >> tag [
	^'circle'
]
