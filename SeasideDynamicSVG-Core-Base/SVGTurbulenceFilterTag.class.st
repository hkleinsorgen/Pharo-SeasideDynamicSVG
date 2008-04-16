Class {
	#name : #SVGTurbulenceFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGTurbulenceFilterTag >> baseFrequency: aNumberList [
	self
		attributeAt: 'baseFrequency'
		put: aNumberList

]

{ #category : #accessing }
SVGTurbulenceFilterTag >> numOctaves: anInteger [
	self
		attributeAt: 'numOctaves'
		put: anInteger

]

{ #category : #accessing }
SVGTurbulenceFilterTag >> seed: aNumber [
	self
		attributeAt: 'seed'
		put: aNumber

]

{ #category : #accessing }
SVGTurbulenceFilterTag >> stitchTiles: aString [
	self
		attributeAt: 'stitchTiles'
		put: aString

]

{ #category : #private }
SVGTurbulenceFilterTag >> tag [
	^'feTurbolence'
]

{ #category : #accessing }
SVGTurbulenceFilterTag >> type: aString [
	self
		attributeAt: 'type'
		put: aString

]
