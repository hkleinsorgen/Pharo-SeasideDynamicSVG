Class {
	#name : #SVGMaskTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #convenience }
SVGMaskTag >> bounds: aRectangle [

	self origin: aRectangle origin.
	self extent: aRectangle extent.
]

{ #category : #convenience }
SVGMaskTag >> extent: aPoint [

	self width: aPoint x.
	self height: aPoint y.
]

{ #category : #accessing }
SVGMaskTag >> height: aCoordinate [

	self attributeAt: 'height' put: aCoordinate
]

{ #category : #accessing }
SVGMaskTag >> maskContentUnits: aString [

	self attributeAt: 'maskContentUnits' put: aString
]

{ #category : #accessing }
SVGMaskTag >> maskUnits: aString [

	self attributeAt: 'maskUnits' put: aString
]

{ #category : #convenience }
SVGMaskTag >> origin: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #private }
SVGMaskTag >> tag [

	^ 'mask'
]

{ #category : #accessing }
SVGMaskTag >> width: aCoordinate [

	self attributeAt: 'width' put: aCoordinate
]

{ #category : #accessing }
SVGMaskTag >> x: aCoordinate [

	self attributeAt: 'x' put: aCoordinate
]

{ #category : #accessing }
SVGMaskTag >> y: aCoordinate [

	self attributeAt: 'y' put: aCoordinate
]
