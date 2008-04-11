Class {
	#name : #SVGCircleTag,
	#superclass : #SVGShapeTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGCircleTag >> center: aPoint [

	self centerX: aPoint x.
	self centerY: aPoint y.
]

{ #category : #accessing }
SVGCircleTag >> centerX: aNumber [
	self
		attributeAt: 'cx'
		put: aNumber svgAttributeValue.

]

{ #category : #accessing }
SVGCircleTag >> centerY: aNumber [
	self
		attributeAt: 'cy'
		put: aNumber svgAttributeValue.

]

{ #category : #accessing }
SVGCircleTag >> radius: aNumber [
	
	self attributeAt: 'r' put: aNumber svgAttributeValue
]

{ #category : #private }
SVGCircleTag >> tag [
	^'circle'
]
