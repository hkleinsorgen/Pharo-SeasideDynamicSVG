Class {
	#name : #SVGOpacityAttribute,
	#superclass : #SVGAttribute,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGOpacityAttribute >> fillOpacity: anObject [
	^ self attributeAt: 'fill-opacity' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGOpacityAttribute >> opacity: anObject [
	^ self attributeAt: 'opacity' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGOpacityAttribute >> strokeOpacity: anObject [
	^ self attributeAt: 'stroke-opacity' put: anObject svgAttributeValue
]
