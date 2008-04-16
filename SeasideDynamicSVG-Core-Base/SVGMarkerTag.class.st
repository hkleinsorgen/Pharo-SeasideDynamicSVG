Class {
	#name : #SVGMarkerTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #convenience }
SVGMarkerTag >> autoOrientation [

	self orientation: 'auto'
]

{ #category : #convenience }
SVGMarkerTag >> extent: aPoint [

	self width: aPoint x.
	self height: aPoint y.
]

{ #category : #accessing }
SVGMarkerTag >> height: aLength [

	self attributeAt: 'markerHeight' put: aLength
]

{ #category : #accessing }
SVGMarkerTag >> markerUnits: aCoordinateSystem [

	self attributeAt: 'markerUnits' put: aCoordinateSystem
]

{ #category : #accessing }
SVGMarkerTag >> needsId [

	^ true
]

{ #category : #accessing }
SVGMarkerTag >> orientation: anAngle [

	self attributeAt: 'orient' put: anAngle
]

{ #category : #accessing }
SVGMarkerTag >> overflow: aString [

	self attributeAt: 'overflow' put: aString
]

{ #category : #convenience }
SVGMarkerTag >> referencePoint: aPoint [

	self referenceX: aPoint x.
	self referenceY: aPoint y.
]

{ #category : #accessing }
SVGMarkerTag >> referenceX: aCoordinate [

	self attributeAt: 'refX' put: aCoordinate
]

{ #category : #accessing }
SVGMarkerTag >> referenceY: aCoordinate [

	self attributeAt: 'refY' put: aCoordinate
]

{ #category : #accessing }
SVGMarkerTag >> tag [

	^ 'marker'
]

{ #category : #accessing }
SVGMarkerTag >> viewBox: aRectangleOrString [ 

	self 
		attributeAt: 'viewBox'
		put: aRectangleOrString toSVGViewBoxString
]

{ #category : #accessing }
SVGMarkerTag >> width: aLength [

	self attributeAt: 'markerWidth' put: aLength
]
