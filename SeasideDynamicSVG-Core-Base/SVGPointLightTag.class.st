Class {
	#name : #SVGPointLightTag,
	#superclass : #SVGFilterSubElement,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #private }
SVGPointLightTag >> tag [
	^'fePointLight'
]

{ #category : #accessing }
SVGPointLightTag >> x: aNumber [
	self attributes at: 'x' put: aNumber
]

{ #category : #accessing }
SVGPointLightTag >> y: aNumber [
	self attributes at: 'y' put: aNumber
]

{ #category : #accessing }
SVGPointLightTag >> z: aNumber [
	self attributes at: 'z' put: aNumber
]
