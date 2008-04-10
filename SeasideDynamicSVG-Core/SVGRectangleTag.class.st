Class {
	#name : #SVGRectangleTag,
	#superclass : #SVGShapeTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #attributes }
SVGRectangleTag >> height: aNumber [
	
	self attributeAt: 'height' put: aNumber
]

{ #category : #private }
SVGRectangleTag >> tag [
	
	^'rect'
]

{ #category : #attributes }
SVGRectangleTag >> width: aNumber [
	
	self attributeAt: 'width' put: aNumber
]
