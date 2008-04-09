Class {
	#name : #SVGCircleTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGCircleTag >> center: aPoint [
	
	self
		attributeAt: 'cx'
		put: aPoint x.
	self
		attributeAt: 'cy'
		put: aPoint y
]

{ #category : #accessing }
SVGCircleTag >> radius: aNumber [
	
	self attributeAt: 'r' put: aNumber
]

{ #category : #private }
SVGCircleTag >> tag [
	
	^'circle'
]
