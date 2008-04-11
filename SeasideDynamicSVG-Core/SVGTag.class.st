Class {
	#name : #SVGTag,
	#superclass : #WATagBrush,
	#instVars : [
		'paint',
		'opacity',
		'attributeSets',
		'transformList'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'accessing-transform' }
SVGTag >> addRotation: aNumber [
	self transformList add: (SVGRotationType with: aNumber)
]

{ #category : #'accessing-transform' }
SVGTag >> addScale: aPointOrNumber [
	self transformList add: (SVGScaleType with: aPointOrNumber)
]

{ #category : #'accessing-transform' }
SVGTag >> addTranslation: aPointOrNumber [
	self transformList add: (SVGTranslationType with: aPointOrNumber)
]

{ #category : #'accessing-attributes' }
SVGTag >> attributeAt: aKey ifAbsentPut: aBlock [

	^ super attributeAt: aKey ifAbsentPut: [ aBlock value svgAttributeValue ]

]

{ #category : #'accessing-attributes' }
SVGTag >> attributeAt: aKey put: aValue [

	^ super attributeAt: aKey put: aValue svgAttributeValue
]

{ #category : #'accessing-attribute sets' }
SVGTag >> attributeSetAt: attributeSetClass [ 

	attributeSets isNil ifTrue: [ attributeSets := Dictionary new].
	^ attributeSets at: attributeSetClass ifAbsentPut: [ attributeSetClass brush: self ]
]

{ #category : #accessing }
SVGTag >> opacity [
	^ self attributeSetAt: SVGOpacityAttributeSet
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
	^ self attributeSetAt: SVGPaintAttributeSet
]

{ #category : #accessing }
SVGTag >> paint: aBlock [
	aBlock value: self paint
]

{ #category : #styles }
SVGTag >> style: aString value: value [
	
	self attributes addStyle: aString , ':' , value displayString
]

{ #category : #accessing }
SVGTag >> transformList [
	transformList ifNil: [transformList := OrderedCollection new].
	^transformList
]
