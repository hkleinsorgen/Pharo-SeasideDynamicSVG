Class {
	#name : #SVGEllipseTag,
	#superclass : #SVGShapeTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGEllipseTag >> center: aPoint [

	self centerX: aPoint x.
	self centerY: aPoint y.
]

{ #category : #accessing }
SVGEllipseTag >> centerX: aNumber [
	self
		attributeAt: 'cx'
		put: aNumber svgAttributeValue.

]

{ #category : #accessing }
SVGEllipseTag >> centerY: aNumber [
	self
		attributeAt: 'cy'
		put: aNumber svgAttributeValue.

]

{ #category : #accessing }
SVGEllipseTag >> radius: aPoint [

	self radiusX: aPoint x.
	self radiusY: aPoint y.
]

{ #category : #accessing }
SVGEllipseTag >> radiusX: aNumber [

	self
		attributeAt: 'rx'
		put: aNumber svgAttributeValue.

]

{ #category : #accessing }
SVGEllipseTag >> radiusY: aNumber [

	self
		attributeAt: 'ry'
		put: aNumber svgAttributeValue.

]

{ #category : #accessing }
SVGEllipseTag >> tag [
	^'ellipse' 
]
