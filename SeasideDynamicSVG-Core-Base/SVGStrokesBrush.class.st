Class {
	#name : #SVGStrokesBrush,
	#superclass : #SVGShapeTag,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGStrokesBrush >> markerEnd: anURIOrTag [

	self attributeAt: 'marker-end' put: anURIOrTag 
]

{ #category : #accessing }
SVGStrokesBrush >> markerMid: anURIOrTag [

	self attributeAt: 'marker-mid' put: anURIOrTag 
]

{ #category : #accessing }
SVGStrokesBrush >> markerStart: anURIOrTag [

	self attributeAt: 'marker-start' put: anURIOrTag 
]
