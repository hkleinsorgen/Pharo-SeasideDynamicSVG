Class {
	#name : #SVGRectangleTag,
	#superclass : #SVGShapeTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #attributes }
SVGRectangleTag >> cornerRadius: aPoint [

	self cornerRadiusX: aPoint x.
	self cornerRadiusY: aPoint y.

]

{ #category : #attributes }
SVGRectangleTag >> cornerRadiusX: aNumber [
	
	self attributeAt: 'rx' put: aNumber svgAttributeValue.

]

{ #category : #attributes }
SVGRectangleTag >> cornerRadiusY: aNumber [
	
	self attributeAt: 'ry' put: aNumber svgAttributeValue.

]

{ #category : #attributes }
SVGRectangleTag >> extent: aPoint [
	
	self width: aPoint x.
	self height: aPoint y.
]

{ #category : #attributes }
SVGRectangleTag >> height: aNumber [
	
	self attributeAt: 'height' put: aNumber
]

{ #category : #attributes }
SVGRectangleTag >> origin: aPoint [
	
	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #private }
SVGRectangleTag >> tag [
	
	^'rect'
]

{ #category : #attributes }
SVGRectangleTag >> width: aNumber [
	
	self attributeAt: 'width' put: aNumber
]

{ #category : #attributes }
SVGRectangleTag >> x: aNumber [
	
	self attributeAt: 'x' put: aNumber svgAttributeValue.

]

{ #category : #attributes }
SVGRectangleTag >> y: aNumber [
	
	self attributeAt: 'y' put: aNumber svgAttributeValue.

]
