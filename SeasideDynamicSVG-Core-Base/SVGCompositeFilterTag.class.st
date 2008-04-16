Class {
	#name : #SVGCompositeFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGCompositeFilterTag >> input2: aNumber [
	self
		attributeAt: 'in2'
		put: aNumber.

]

{ #category : #accessing }
SVGCompositeFilterTag >> k1: aNumber [
	self
		attributeAt: 'k1'
		put: aNumber.

]

{ #category : #accessing }
SVGCompositeFilterTag >> k2: aNumber [
	self
		attributeAt: 'k2'
		put: aNumber.

]

{ #category : #accessing }
SVGCompositeFilterTag >> k3: aNumber [
	self
		attributeAt: 'k3'
		put: aNumber.

]

{ #category : #accessing }
SVGCompositeFilterTag >> k4: aNumber [
	self
		attributeAt: 'k4'
		put: aNumber.

]

{ #category : #accessing }
SVGCompositeFilterTag >> operator: aString [
	self
		attributeAt: 'operator'
		put: aString.

]

{ #category : #private }
SVGCompositeFilterTag >> tag [
	^'feComposite'
]
