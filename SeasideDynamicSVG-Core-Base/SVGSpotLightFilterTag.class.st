Class {
	#name : #SVGSpotLightFilterTag,
	#superclass : #SVGPointLightFilterTag,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGSpotLightFilterTag >> limitingConeAngle: aNumber [
	self attributes at: 'limitingConeAngle' put: aNumber

]

{ #category : #accessing }
SVGSpotLightFilterTag >> pointsAtX: aNumber [
	self attributes at: 'pointsAtX' put: aNumber

]

{ #category : #accessing }
SVGSpotLightFilterTag >> pointsAtY: aNumber [
	self attributes at: 'pointsAtY' put: aNumber

]

{ #category : #accessing }
SVGSpotLightFilterTag >> pointsAtZ: aNumber [
	self attributes at: 'pointsAtZ' put: aNumber

]

{ #category : #accessing }
SVGSpotLightFilterTag >> specularExponent: aNumber [
	self attributes at: 'specularExponent' put: aNumber

]

{ #category : #private }
SVGSpotLightFilterTag >> tag [
	^'feSpotLight'

]
