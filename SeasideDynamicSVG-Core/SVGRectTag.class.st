Class {
	#name : #SVGRectTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #attributes }
SVGRectTag >> height: aNumber [
	
	self attributeAt: 'height' put: aNumber
]

{ #category : #private }
SVGRectTag >> tag [
	
	^'rect'
]

{ #category : #attributes }
SVGRectTag >> width: aNumber [
	
	self attributeAt: 'width' put: aNumber
]
