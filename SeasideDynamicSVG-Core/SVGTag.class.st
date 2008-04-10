Class {
	#name : #SVGTag,
	#superclass : #WATagBrush,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGTag >> fill: aColorOrString [
	
	self attributeAt: 'fill' put: aColorOrString svgAttributeValue
]

{ #category : #accessing }
SVGTag >> paint [
	^self attributeAt: 'paint' ifAbsentPut: SVGPaintAttribute new
]

{ #category : #accessing }
SVGTag >> stroke: aColorOrString [
	
	self attributeAt: 'stroke' put: aColorOrString svgAttributeValue
]

{ #category : #accessing }
SVGTag >> strokeWidth: aNumber [
	
	self attributeAt: 'stroke-width' put: aNumber svgAttributeValue
]

{ #category : #styles }
SVGTag >> style: aString value: value [
	
	self attributes addStyle: aString , ':' , value displayString
]
