Class {
	#name : #SVGFilterPrimitive,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #private }
SVGFilterPrimitive >> height: aStringOrNumber [
	self attributes at: 'height' put: aStringOrNumber
]

{ #category : #private }
SVGFilterPrimitive >> input: aString [
	self attributes at: 'in' put: aString
]

{ #category : #accessing }
SVGFilterPrimitive >> isClosed [
	^true
]

{ #category : #private }
SVGFilterPrimitive >> result: aString [
	self attributes at: 'result' put: aString
]

{ #category : #private }
SVGFilterPrimitive >> width: aStringOrNumber [
	self attributes at: 'width' put: aStringOrNumber
]

{ #category : #private }
SVGFilterPrimitive >> x: aStringOrNumber [
	self attributes at: 'x' put: aStringOrNumber
]

{ #category : #private }
SVGFilterPrimitive >> y: aStringOrNumber [
	self attributes at: 'y' put: aStringOrNumber
]
