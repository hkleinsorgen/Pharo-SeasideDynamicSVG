Class {
	#name : #SVGForeignObjectTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #convenience }
SVGForeignObjectTag >> bounds: aRectangle [

	self origin: aRectangle origin.
	self extent: aRectangle extent.
]

{ #category : #accessing }
SVGForeignObjectTag >> clip: aShape [

	self attributeAt: 'clip' put: aShape
]

{ #category : #convenience }
SVGForeignObjectTag >> extent: aPoint [

	self width: aPoint x.
	self height: aPoint y.
]

{ #category : #accessing }
SVGForeignObjectTag >> height: aCoordinate [

	self attributeAt: 'height' put: aCoordinate
]

{ #category : #convenience }
SVGForeignObjectTag >> origin: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #private }
SVGForeignObjectTag >> tag [

	^ 'foreignObject'
]

{ #category : #accessing }
SVGForeignObjectTag >> width: aCoordinate [

	self attributeAt: 'width' put: aCoordinate
]

{ #category : #accessing }
SVGForeignObjectTag >> x: aCoordinate [

	self attributeAt: 'x' put: aCoordinate
]

{ #category : #accessing }
SVGForeignObjectTag >> y: aCoordinate [

	self attributeAt: 'y' put: aCoordinate
]
