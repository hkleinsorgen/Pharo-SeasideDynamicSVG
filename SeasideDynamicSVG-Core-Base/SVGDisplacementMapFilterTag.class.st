Class {
	#name : #SVGDisplacementMapFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGDisplacementMapFilterTag >> input2: aNumber [
	self
		attributeAt: 'in2'
		put: aNumber.

]

{ #category : #accessing }
SVGDisplacementMapFilterTag >> scale: aNumber [
	self
		attributeAt: 'scale'
		put: aNumber.

]

{ #category : #private }
SVGDisplacementMapFilterTag >> tag [
	^'feDisplacementMap'
]

{ #category : #accessing }
SVGDisplacementMapFilterTag >> xChannelSelector: aString [
	self
		attributeAt: 'xChannelSelector'
		put: aString

]

{ #category : #accessing }
SVGDisplacementMapFilterTag >> yChannelSelector: aString [
	self
		attributeAt: 'yChannelSelector'
		put: aString

]
