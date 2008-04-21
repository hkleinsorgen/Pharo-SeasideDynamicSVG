Class {
	#name : #SVGDistantLightFilterTag,
	#superclass : #SVGFilterSubElement,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGDistantLightFilterTag >> azimuth: aNumber [
	self attributes at: 'azimuth' put: aNumber
]

{ #category : #accessing }
SVGDistantLightFilterTag >> elevation: aNumber [
	self attributes at: 'elevation' put: aNumber
]

{ #category : #private }
SVGDistantLightFilterTag >> tag [
	^'feDistantLight'
]
