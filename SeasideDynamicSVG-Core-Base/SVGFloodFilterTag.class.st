Class {
	#name : #SVGFloodFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGFloodFilterTag >> floodColor: aColorOrString [
	self
		attributeAt: 'flood-color'
		put: aColorOrString

]

{ #category : #accessing }
SVGFloodFilterTag >> floodOpacity: aNumberString [
	self
		attributeAt: 'flood-opacity'
		put: aNumberString

]

{ #category : #private }
SVGFloodFilterTag >> tag [
	^'feFlood'
]
