Class {
	#name : #SVGTag,
	#superclass : #WATagBrush,
	#instVars : [
		'attributeSets',
		'transformList'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'accessing-attributes' }
SVGTag >> attributeAt: aKey ifAbsentPut: aBlock [ 
	^ super 
		attributeAt: aKey
		ifAbsentPut: [ aBlock value toSVGString ]
]

{ #category : #'accessing-attributes' }
SVGTag >> attributeAt: aKey put: aValue [ 
	^ super 
		attributeAt: aKey
		put: aValue toSVGString
]

{ #category : #private }
SVGTag >> attributeSetAt: attributeSetClass [ 

	" hkl: maybe this could be done with traits. however, this would have a serious impact on portability. "
	
	attributeSets isNil ifTrue: [ attributeSets := Dictionary new].
	^ attributeSets at: attributeSetClass ifAbsentPut: [ attributeSetClass brush: self ]
]

{ #category : #private }
SVGTag >> closeTag [
	"Close the receiving tag onto the document."

	| fullTag |
	self isClosed
		ifFalse: [
			fullTag := canvas context containsInlinedSVG
				ifTrue: [canvas context userAgentAdaptor fullTagForInlinedSVGTag: self tag]
				ifFalse: [self tag].
			self document closeTag: fullTag
		]
]

{ #category : #'accessing-attribute sets' }
SVGTag >> opacity [
	^ self attributeSetAt: SVGOpacityAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGTag >> opacity: aBlock [
	aBlock value: self opacity
]

{ #category : #public }
SVGTag >> openTag [

	| fullTag |
	fullTag := canvas context containsInlinedSVG
		ifTrue: [ canvas context userAgentAdaptor fullTagForInlinedSVGTag: self tag ]
		ifFalse: [ self tag ].
	self document openTag: fullTag attributes: attributes closed: self isClosed.
	
]

{ #category : #'accessing-attribute sets' }
SVGTag >> paint [
	^ self attributeSetAt: SVGPaintAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGTag >> paint: aBlock [
	aBlock value: self paint
]

{ #category : #convenience }
SVGTag >> setOpacity: aNumber [
	self opacity: [:o | o opacity: aNumber]
]

{ #category : #styles }
SVGTag >> style: aString value: value [
	
	self attributes addStyle: aString , ':' , value displayString
]

{ #category : #accessing }
SVGTag >> transform: aBlock [
	aBlock value: self transformList
]

{ #category : #accessing }
SVGTag >> transformList [
	transformList ifNil: [transformList := SVGTransformList new].
	^transformList
]

{ #category : #public }
SVGTag >> with: aBlock [ 
	transformList isNil
		ifFalse: [self attributes 
					at: 'transform'
					put: transformList toSVGString].
	super with: aBlock
]
