Class {
	#name : #SVGTag,
	#superclass : #WATagBrush,
	#instVars : [
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

{ #category : #accessing }
SVGTag >> color: aPaint [ 
	^ self 
		attributeAt: 'color'
		put: aPaint toSVGPaint
]

{ #category : #accessing }
SVGTag >> colorInterpolation: anObject [
	^ self attributeAt: 'color-interpolation' put: anObject 
]

{ #category : #'convenience-rendering' }
SVGTag >> colorOptimizeQuality [

	self colorRendering: 'optimizeQuality'
]

{ #category : #'convenience-rendering' }
SVGTag >> colorOptimizeSpeed [

	self colorRendering: 'optimizeSpeed'
]

{ #category : #accessing }
SVGTag >> colorRendering: anObject [
	^ self attributeAt: 'color-rendering' put: anObject 
]

{ #category : #'convenience-rendering' }
SVGTag >> dashed [
	self strokeDasharray: '10,3'
]

{ #category : #'convenience-rendering' }
SVGTag >> dotted [
	self strokeDasharray: '2,2'
]

{ #category : #accessing }
SVGTag >> fill: aPaint [ 
	^ self 
		attributeAt: 'fill'
		put: aPaint toSVGPaint
]

{ #category : #accessing }
SVGTag >> fillOpacity: anObject [
	^ self attributeAt: 'fill-opacity' put: anObject 
]

{ #category : #accessing }
SVGTag >> fillRule: anObject [
	^ self attributeAt: 'fill-rule' put: anObject 
]

{ #category : #'convenience-fill rule' }
SVGTag >> fillRuleEvenOdd [

	self fillRule: 'evenodd'
]

{ #category : #'convenience-fill rule' }
SVGTag >> fillRuleNonZero [

	self fillRule: 'nonzero'
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

{ #category : #accessing }
SVGTag >> opacity: anObject [
	^ self attributeAt: 'opacity' put: anObject 
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

{ #category : #private }
SVGTag >> setValue: aValue [

	self color: aValue.
	self fill: aValue.
]

{ #category : #accessing }
SVGTag >> stroke: aPaint [ 
	^ self 
		attributeAt: 'stroke'
		put: aPaint toSVGPaint
]

{ #category : #accessing }
SVGTag >> strokeDasharray: anObject [
	^ self attributeAt: 'stroke-dasharray' put: anObject 
]

{ #category : #accessing }
SVGTag >> strokeDashoffset: anObject [
	^ self attributeAt: 'stroke-dashoffset' put: anObject 
]

{ #category : #accessing }
SVGTag >> strokeLinecap: anObject [
	^ self attributeAt: 'stroke-linecap' put: anObject 
]

{ #category : #accessing }
SVGTag >> strokeLinejoin: anObject [
	^ self attributeAt: 'stroke-linejoin' put: anObject 
]

{ #category : #accessing }
SVGTag >> strokeMiterlimit: anObject [
	^ self attributeAt: 'stroke-miterlimit' put: anObject 
]

{ #category : #accessing }
SVGTag >> strokeOpacity: anObject [
	^ self attributeAt: 'stroke-opacity' put: anObject 
]

{ #category : #accessing }
SVGTag >> strokeWidth: anObject [
	^ self attributeAt: 'stroke-width' put: anObject 
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
