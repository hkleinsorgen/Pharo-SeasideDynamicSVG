Class {
	#name : #SVGGlyphBrush,
	#superclass : #SVGTag,
	#instVars : [
		'path'
	],
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #attributes }
SVGGlyphBrush >> horizontalAdvanceX: aNumber [

	self attributeAt: 'horiz-adv-x' put: aNumber
]

{ #category : #public }
SVGGlyphBrush >> openTag [

	| d |
	(path notNil and: [ (self attributes includesKey: 'd') not ])
		ifTrue: [
			d := path pathString.
			d notNil ifTrue: [ self attributeAt: 'd' put: d ].
		].
	super openTag.
]

{ #category : #accessing }
SVGGlyphBrush >> path [

	path isNil ifTrue: [ path := SVGPath new ].
	^ path
]

{ #category : #attributes }
SVGGlyphBrush >> path: aBlockOrString [

	^ aBlockOrString isString
		ifTrue: [ self attributeAt: 'd' put: aBlockOrString ] 
		ifFalse: [ aBlockOrString value: self path ].
]

{ #category : #attributes }
SVGGlyphBrush >> verticalAdvanceY: aNumber [

	self attributeAt: 'vert-adv-Y' put: aNumber
]

{ #category : #convenience }
SVGGlyphBrush >> verticalOrigin: aPoint [

	self verticalOriginX: aPoint x.
	self verticalOriginY: aPoint y.
]

{ #category : #attributes }
SVGGlyphBrush >> verticalOriginX: aNumber [

	self attributeAt: 'vert-origin-x' put: aNumber
]

{ #category : #attributes }
SVGGlyphBrush >> verticalOriginY: aNumber [

	self attributeAt: 'vert-origin-y' put: aNumber
]
