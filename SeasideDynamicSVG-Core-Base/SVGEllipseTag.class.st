Class {
	#name : #SVGEllipseTag,
	#superclass : #SVGShapeTag,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #convenience }
SVGEllipseTag >> center: aPoint [

	self centerX: aPoint x.
	self centerY: aPoint y.
]

{ #category : #accessing }
SVGEllipseTag >> centerX: aNumber [
	self
		attributeAt: 'cx'
		put: aNumber .

]

{ #category : #accessing }
SVGEllipseTag >> centerY: aNumber [
	self
		attributeAt: 'cy'
		put: aNumber .

]

{ #category : #convenience }
SVGEllipseTag >> radius: aPoint [

	self radiusX: aPoint x.
	self radiusY: aPoint y.
]

{ #category : #accessing }
SVGEllipseTag >> radiusX: aNumber [

	self
		attributeAt: 'rx'
		put: aNumber .

]

{ #category : #accessing }
SVGEllipseTag >> radiusY: aNumber [

	self
		attributeAt: 'ry'
		put: aNumber .

]

{ #category : #convenience }
SVGEllipseTag >> rectangle: aRectangle [

	self center: aRectangle center.
	self radius: (aRectangle extent / 2).
]

{ #category : #accessing }
SVGEllipseTag >> tag [
	^'ellipse' 
]
