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

{ #category : #public }
SVGTag >> openTagTest [
	"mabye try in the future to use an extra namespace e.g. svg:tag to make inline svg possible for IE"
	"doesnt work with xhtml doctype"
	canvas context containsInlinedSVG
		ifTrue: [self document openTag: 'svg:', self tag attributes: attributes closed: self isClosed]
		ifFalse: [self document openTag: self tag attributes: attributes closed: self isClosed]
	
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
