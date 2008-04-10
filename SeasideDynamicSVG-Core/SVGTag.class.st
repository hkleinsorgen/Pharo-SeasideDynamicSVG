Class {
	#name : #SVGTag,
	#superclass : #WATagBrush,
	#instVars : [
		'paint',
		'opacity'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGTag >> opacity [
	opacity ifNil: [opacity := SVGOpacityAttribute new].
	^opacity
]

{ #category : #accessing }
SVGTag >> opacity: aBlock [
	aBlock value: self opacity
]

{ #category : #accessing }
SVGTag >> paint [
	paint ifNil: [paint := SVGPaintAttribute new].
	^paint
]

{ #category : #accessing }
SVGTag >> paint: aBlock [
	aBlock value: self paint
]

{ #category : #styles }
SVGTag >> style: aString value: value [
	
	self attributes addStyle: aString , ':' , value displayString
]

{ #category : #public }
SVGTag >> with: aBlock [
	paint isNil ifFalse: [paint attributesOn: self attributes].
	opacity isNil ifFalse: [opacity attributesOn: self attributes].
	super with: aBlock
]
