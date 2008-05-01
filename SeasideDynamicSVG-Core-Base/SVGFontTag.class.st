Class {
	#name : #SVGFontTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #convenience }
SVGFontTag >> horizontalAdvance: aPoint [

	self horizontalAdvanceX: aPoint x.
	self horizontalAdvanceY: aPoint y.
]

{ #category : #attributes }
SVGFontTag >> horizontalAdvanceX: aNumber [

	self attributeAt: 'horiz-adv-x' put: aNumber
]

{ #category : #attributes }
SVGFontTag >> horizontalAdvanceY: aNumber [

	self attributeAt: 'horiz-adv-Y' put: aNumber
]

{ #category : #convenience }
SVGFontTag >> horizontalOrigin: aPoint [

	self horizontalOriginX: aPoint x.
	self horizontalOriginY: aPoint y.
]

{ #category : #attributes }
SVGFontTag >> horizontalOriginX: aNumber [

	self attributeAt: 'horiz-origin-x' put: aNumber
]

{ #category : #attributes }
SVGFontTag >> horizontalOriginY: aNumber [

	self attributeAt: 'horiz-origin-y' put: aNumber
]

{ #category : #private }
SVGFontTag >> tag [

	^ 'font'
]

{ #category : #convenience }
SVGFontTag >> verticalAdvance: aPoint [

	self verticalAdvanceX: aPoint x.
	self verticalAdvanceY: aPoint y.
]

{ #category : #attributes }
SVGFontTag >> verticalAdvanceX: aNumber [

	self attributeAt: 'vert-adv-x' put: aNumber
]

{ #category : #attributes }
SVGFontTag >> verticalAdvanceY: aNumber [

	self attributeAt: 'vert-adv-Y' put: aNumber
]

{ #category : #convenience }
SVGFontTag >> verticalOrigin: aPoint [

	self verticalOriginX: aPoint x.
	self verticalOriginY: aPoint y.
]

{ #category : #attributes }
SVGFontTag >> verticalOriginX: aNumber [

	self attributeAt: 'vert-origin-x' put: aNumber
]

{ #category : #attributes }
SVGFontTag >> verticalOriginY: aNumber [

	self attributeAt: 'vert-origin-y' put: aNumber
]
