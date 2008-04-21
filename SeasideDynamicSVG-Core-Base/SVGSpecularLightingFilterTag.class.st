Class {
	#name : #SVGSpecularLightingFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGSpecularLightingFilterTag >> isClosed [
	^false
]

{ #category : #accessing }
SVGSpecularLightingFilterTag >> lightingColor: aString [
	self
		attributeAt: 'lightingColor'
		put: aString

]

{ #category : #accessing }
SVGSpecularLightingFilterTag >> specularConstant: aNumber [
	self
		attributeAt: 'specularConstant'
		put: aNumber

]

{ #category : #accessing }
SVGSpecularLightingFilterTag >> specularExponent: aNumber [
	self
		attributeAt: 'specularExponent'
		put: aNumber

]

{ #category : #accessing }
SVGSpecularLightingFilterTag >> surfaceScale: aNumber [
	self
		attributeAt: 'surfaceScale'
		put: aNumber

]

{ #category : #private }
SVGSpecularLightingFilterTag >> tag [
	^'feSpecularLighting'
]
