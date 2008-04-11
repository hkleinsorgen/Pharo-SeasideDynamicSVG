Class {
	#name : #SVGOpacityAttributeSet,
	#superclass : #SVGAttributeSet,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGOpacityAttributeSet >> fillOpacity: anObject [
	^ self attributeAt: 'fill-opacity' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGOpacityAttributeSet >> opacity: anObject [
	^ self attributeAt: 'opacity' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGOpacityAttributeSet >> strokeOpacity: anObject [
	^ self attributeAt: 'stroke-opacity' put: anObject svgAttributeValue
]
