Class {
	#name : #SVGRootTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #attributes }
SVGRootTag >> height: aHeight [

	self attributeAt: 'height' put: aHeight svgAttributeValue.
]

{ #category : #initialization }
SVGRootTag >> initialize [

	super initialize.
	self attributeAt: 'xmlns' put: SVGRoot defaultNamespace.
	self attributeAt: 'xmlns:xlink' put: SVGRoot xlinkNamespace.
]

{ #category : #accessing }
SVGRootTag >> tag [

	^ 'svg'
]

{ #category : #attributes }
SVGRootTag >> width: aWidth [

	self attributeAt: 'width' put: aWidth svgAttributeValue.
]
