Class {
	#name : #SVGMarkerAttributeSet,
	#superclass : #SVGAttributeSet,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGMarkerAttributeSet >> markerEnd: anURIOrTag [

	self attributeAt: 'marker-end' put: anURIOrTag 
]

{ #category : #accessing }
SVGMarkerAttributeSet >> markerMid: anURIOrTag [

	self attributeAt: 'marker-mid' put: anURIOrTag 
]

{ #category : #accessing }
SVGMarkerAttributeSet >> markerStart: anURIOrTag [

	self attributeAt: 'marker-start' put: anURIOrTag 
]
