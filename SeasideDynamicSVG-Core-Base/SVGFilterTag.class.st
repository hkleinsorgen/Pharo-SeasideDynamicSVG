Class {
	#name : #SVGFilterTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGFilterTag >> extent: aPoint [
	self
		attributeAt: 'width'
		put: aPoint x.
	self
		attributeAt: 'height'
		put: aPoint y.
		

]

{ #category : #accessing }
SVGFilterTag >> filterUnits: aString [
	self
		attributeAt: 'filterUnits'
		put: aString.

]

{ #category : #accessing }
SVGFilterTag >> height: aNumber [
	self
		attributeAt: 'height'
		put: aNumber

]

{ #category : #accessing }
SVGFilterTag >> position: aPoint [
	self x: aPoint x.
	self y: aPoint y
		

]

{ #category : #private }
SVGFilterTag >> tag [
	^'filter'
]

{ #category : #accessing }
SVGFilterTag >> width: aNumber [
	self
		attributeAt: 'width'
		put: aNumber

]

{ #category : #accessing }
SVGFilterTag >> x: aNumber [
	self
		attributeAt: 'x'
		put: aNumber

]

{ #category : #accessing }
SVGFilterTag >> y: aNumber [
	self
		attributeAt: 'y'
		put: aNumber

]
