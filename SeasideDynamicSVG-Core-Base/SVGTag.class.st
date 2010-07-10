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

{ #category : #'attributes-clipping' }
SVGTag >> clipPath: aPathReference [ 
	self 
		attributeAt: 'clip-path'
		put: aPathReference toSVGURIReference
]

{ #category : #'attributes-clipping' }
SVGTag >> clipRule: aString [

	self attributeAt: 'clip-rule' put: aString
]

{ #category : #'attributes-clipping' }
SVGTag >> clipRuleEvenOdd [ 

	self clipRule: 'evenodd'
]

{ #category : #'attributes-clipping' }
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

{ #category : #'attributes-paint' }
SVGTag >> color: aPaint [ 
	^ self 
		attributeAt: 'color'
		put: aPaint toSVGPaint
]

{ #category : #'attributes-paint' }
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

{ #category : #'attributes-paint' }
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

{ #category : #'attributes-paint' }
SVGTag >> fill: aPaint [ 
	^ self 
		attributeAt: 'fill'
		put: aPaint toSVGPaint
]

{ #category : #'attributes-opacity' }
SVGTag >> fillOpacity: anObject [
	^ self attributeAt: 'fill-opacity' put: anObject 
]

{ #category : #'attributes-paint' }
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

{ #category : #attributes }
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

{ #category : #'attributes-clipping' }
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

{ #category : #'attributes-events' }
SVGTag >> onAbort: aString [

	self attributes at: 'onabort' append: aString separator: ';'
]

{ #category : #'attributes-events' }
SVGTag >> onActivate: aString [

	self attributes at: 'onactivate' append: aString separator: ';'
]

{ #category : #'attributes-events' }
SVGTag >> onBegin: aString [

	self attributes at: 'onbegin' append:  aString separator: ';'
]

{ #category : #'attributes-events' }
SVGTag >> onEnd: aString [

	self attributes at: 'onend' append: aString separator: ';'
]

{ #category : #'attributes-events' }
SVGTag >> onFocusIn: aString [

	self attributes at: 'onfocusin' append: aString separator: ';'
]

{ #category : #'attributes-events' }
SVGTag >> onFocusOut: aString [

	self attributes at: 'onfocusout' append: aString separator: ';'
]

{ #category : #'attributes-events' }
SVGTag >> onRepeat: aString [

	self attributes at: 'onrepeat' append: aString separator: ';'
]

{ #category : #'attributes-events' }
SVGTag >> onZoom: aString [

	self attributes at: 'onzoom' append: aString separator: ';'
]

{ #category : #'attributes-opacity' }
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

{ #category : #'attributes-paint' }
SVGTag >> stroke: aPaint [ 
	^ self 
		attributeAt: 'stroke'
		put: aPaint toSVGPaint
]

{ #category : #'attributes-paint' }
SVGTag >> strokeDasharray: anObject [
	^ self attributeAt: 'stroke-dasharray' put: anObject 
]

{ #category : #'attributes-paint' }
SVGTag >> strokeDashoffset: anObject [
	^ self attributeAt: 'stroke-dashoffset' put: anObject 
]

{ #category : #'attributes-paint' }
SVGTag >> strokeLinecap: anObject [
	^ self attributeAt: 'stroke-linecap' put: anObject 
]

{ #category : #'attributes-paint' }
SVGTag >> strokeLinejoin: anObject [
	^ self attributeAt: 'stroke-linejoin' put: anObject 
]

{ #category : #'attributes-paint' }
SVGTag >> strokeMiterlimit: anObject [
	^ self attributeAt: 'stroke-miterlimit' put: anObject 
]

{ #category : #'attributes-opacity' }
SVGTag >> strokeOpacity: anObject [
	^ self attributeAt: 'stroke-opacity' put: anObject 
]

{ #category : #'attributes-paint' }
SVGTag >> strokeWidth: anObject [
	^ self attributeAt: 'stroke-width' put: anObject 
]

{ #category : #attributes }
SVGTag >> style: aString value: value [
	
	self attributes addStyle: aString , ':' , value displayString
]

{ #category : #accessing }
SVGTag >> svgEmbedComponent: aComponent width: svgWidth height: svgHeight [
	" inline component "
	
	canvas context containsInlinedSVG: true.
	svgWidth notNil ifTrue: [ self width: svgWidth ].
	svgHeight notNil ifTrue: [ self height: svgHeight ].
	aComponent setAttributesOfRootTag: self. 
	self drawWith: [ : svg | svg render: aComponent ]
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

{ #category : #attributes }
SVGTag >> transform: aBlock [
	aBlock value: self transformList
]

{ #category : #attributes }
SVGTag >> transformList [
	transformList ifNil: [transformList := SVGTransformList new].
	^transformList
]

{ #category : #attributes }
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

{ #category : #'attributes-xlink' }
SVGTag >> xlinkActuateOnLoad [

	self attributes at: 'xlink:actuate' put: 'onLoad'
]

{ #category : #'attributes-xlink' }
SVGTag >> xlinkArcRole: anURI [

	self attributes at: 'xlink:arcrole' put: anURI
]

{ #category : #'attributes-xlink' }
SVGTag >> xlinkHref: anURI [

	self attributes at: 'xlink:href' put: anURI
]

{ #category : #'attributes-xlink' }
SVGTag >> xlinkRole: anURI [

	self attributes at: 'xlink:role' put: anURI
]

{ #category : #'attributes-xlink' }
SVGTag >> xlinkShowEmbed [

	self attributes at: 'xlink:show' put: 'embed'
]

{ #category : #'attributes-xlink' }
SVGTag >> xlinkTitle: aString [

	self attributes at: 'xlink:title' put: aString
]

{ #category : #'attributes-xlink' }
SVGTag >> xlinkType: aString [

	self attributes at: 'xlink:type' put: aString
]
