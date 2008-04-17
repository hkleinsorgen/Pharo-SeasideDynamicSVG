Class {
	#name : #SVGTag,
	#superclass : #WATagBrush,
	#instVars : [
		'attributeSets',
		'transformList'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
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

{ #category : #clipping }
SVGTag >> clipPath: aPathReference [ 
	self 
		attributeAt: 'clip-path'
		put: aPathReference toSVGURIReference
]

{ #category : #clipping }
SVGTag >> clipRule: aString [

	self attributeAt: 'clip-rule' put: aString
]

{ #category : #clipping }
SVGTag >> clipRuleEvenOdd [ 

	self clipRule: 'evenodd'
]

{ #category : #clipping }
SVGTag >> clipRuleNonZero [

	self clipRule: 'ruleNonZero'
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

{ #category : #convenience }
SVGTag >> fill: fillColor [

	self paint fill: fillColor
]

{ #category : #accessing }
SVGTag >> filter: filterId [
"use predefined filters with the given id from the defs sections"

	self useFilter: filterId
]

{ #category : #'convenience-referencing' }
SVGTag >> generateURL [
	" convenience method for referencing this tag "
	self id isNil ifTrue: [ self error: 'Cannot reference tag without id attribute' ].
	^ self id toSVGURIReference
]

{ #category : #clipping }
SVGTag >> mask: aMaskReference [ 
	self 
		attributeAt: 'mask'
		put: aMaskReference toSVGURIReference
]

{ #category : #'convenience-referencing' }
SVGTag >> needsId [
	" true if this tag should always have an ID.
	for instance, gradients can only be referenced, and referencing requires an id,
	so gradients always need an id "

	^ false
]

{ #category : #'accessing-attribute sets' }
SVGTag >> opacity [
	^ self attributeSetAt: SVGOpacityAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGTag >> opacity: aValueOrBlock [

	self opacity apply: aValueOrBlock
]

{ #category : #public }
SVGTag >> openTag [
	| fullTag |
	fullTag := canvas context containsInlinedSVG 
		ifTrue: [ canvas context userAgentAdaptor fullTagForInlinedSVGTag: self tag ]
		ifFalse: [ self tag ].
	self needsId ifTrue: [ self ensureId ].
	canvas svgTagsNeedNamespace ifTrue: 
		[ self 
			attributeAt: 'xmlns'
			put: SVGRoot defaultNamespace ].
	self document 
		openTag: fullTag
		attributes: attributes
		closed: self isClosed
]

{ #category : #'accessing-attribute sets' }
SVGTag >> paint [
	^ self attributeSetAt: SVGPaintAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGTag >> paint: aValueOrBlock [

	self paint apply: aValueOrBlock
]

{ #category : #convenience }
SVGTag >> stroke: strokeColor [

	self paint stroke: strokeColor
]

{ #category : #convenience }
SVGTag >> strokeWidth: aLengthValue [

	self paint strokeWidth: aLengthValue
]

{ #category : #styles }
SVGTag >> style: aString value: value [
	
	self attributes addStyle: aString , ':' , value displayString
]

{ #category : #'convenience-referencing' }
SVGTag >> toSVGIDReference [
	" convenience method for referencing this tag "
	self id isNil ifTrue: [ self error: 'Cannot reference tag without id attribute' ].
	^ '#', self id
]

{ #category : #'convenience-referencing' }
SVGTag >> toSVGString [

	^ self generateURL
]

{ #category : #'convenience-referencing' }
SVGTag >> toSVGURIReference [
	^ self generateURL
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

{ #category : #accessing }
SVGTag >> useFilter: aFilterReference [
"use predefined filters with the given id from the defs sections"

	self attributes at: 'filter' put: aFilterReference toSVGURIReference
]

{ #category : #public }
SVGTag >> with: aBlock [ 
	transformList isNil
		ifFalse: [self attributes 
					at: 'transform'
					put: transformList toSVGString].
	super with: aBlock
]
