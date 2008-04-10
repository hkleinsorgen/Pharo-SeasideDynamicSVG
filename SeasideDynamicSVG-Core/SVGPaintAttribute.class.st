Class {
	#name : #SVGPaintAttribute,
	#superclass : #SVGAttribute,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGPaintAttribute >> color: anObject [
	^ self attributeAt: 'color' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> colorInterpolation: anObject [
	^ self attributeAt: 'color-interpolation' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> colorRendering: anObject [
	^ self attributeAt: 'color-rendering' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> fill: aPaint [
	^ self attributeAt: 'fill' put: aPaint svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> fillRule: anObject [
	^ self attributeAt: 'fill-rule' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> stroke: anObject [
	^ self attributeAt: 'stroke' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> strokeDasharray: anObject [
	^ self attributeAt: 'stroke-dasharray' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> strokeDashoffset: anObject [
	^ self attributeAt: 'stroke-dashoffset' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> strokeLinecap: anObject [
	^ self attributeAt: 'stroke-linecap' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> strokeLinejoin: anObject [
	^ self attributeAt: 'stroke-linejoin' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> strokeMiterlimit: anObject [
	^ self attributeAt: 'stroke-miterlimit' put: anObject svgAttributeValue
]

{ #category : #accessing }
SVGPaintAttribute >> strokeWidth: anObject [
	^ self attributeAt: 'stroke-width' put: anObject svgAttributeValue
]
