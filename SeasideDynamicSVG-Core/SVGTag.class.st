Class {
	#name : #SVGTag,
	#superclass : #WATagBrush,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGTag >> fill: aColorString [
	
	self attributeAt: 'fill' put: aColorString
]

{ #category : #accessing }
SVGTag >> stroke: aColorString [
	
	self attributeAt: 'stroke' put: aColorString
]

{ #category : #accessing }
SVGTag >> strokeWidth: aNumber [
	
	self attributeAt: 'stroke-width' put: aNumber
]

{ #category : #styles }
SVGTag >> style: aString value: value [
	
	self attributes addStyle: aString , ':' , value displayString
]
