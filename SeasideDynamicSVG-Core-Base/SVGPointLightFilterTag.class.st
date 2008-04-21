Class {
	#name : #SVGPointLightFilterTag,
	#superclass : #SVGFilterSubElement,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #private }
SVGPointLightFilterTag >> tag [
	^'fePointLight'

]

{ #category : #accessing }
SVGPointLightFilterTag >> x: aNumber [
	self attributes at: 'x' put: aNumber

]

{ #category : #accessing }
SVGPointLightFilterTag >> y: aNumber [
	self attributes at: 'y' put: aNumber

]

{ #category : #accessing }
SVGPointLightFilterTag >> z: aNumber [
	self attributes at: 'z' put: aNumber

]
