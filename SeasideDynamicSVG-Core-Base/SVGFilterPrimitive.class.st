Class {
	#name : #SVGFilterPrimitive,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGFilterPrimitive >> extent: aPoint [
	self width: aPoint x.
	self height: aPoint y
		

]

{ #category : #accessing }
SVGFilterPrimitive >> height: aStringOrNumber [
	self attributes at: 'height' put: aStringOrNumber
]

{ #category : #accessing }
SVGFilterPrimitive >> input: aString [
	self attributes at: 'in' put: aString
]

{ #category : #accessing }
SVGFilterPrimitive >> isClosed [
	^true
]

{ #category : #accessing }
SVGFilterPrimitive >> position: aPoint [
	self x: aPoint x.
	self y: aPoint y
		

]

{ #category : #accessing }
SVGFilterPrimitive >> result: aString [
	self attributes at: 'result' put: aString
]

{ #category : #accessing }
SVGFilterPrimitive >> width: aStringOrNumber [
	self attributes at: 'width' put: aStringOrNumber
]

{ #category : #accessing }
SVGFilterPrimitive >> x: aStringOrNumber [
	self attributes at: 'x' put: aStringOrNumber
]

{ #category : #accessing }
SVGFilterPrimitive >> y: aStringOrNumber [
	self attributes at: 'y' put: aStringOrNumber
]
