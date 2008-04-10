Class {
	#name : #SVGRootTag,
	#superclass : #SVGTag,
	#instVars : [
		'svgCanvas'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #public }
SVGRootTag >> drawWith: aBlock [ 

	self openTag.
	canvas nest: [
		self before.
		aBlock value: self svgCanvas.
		self after
	].
	self closeTag.
	closed := true
]

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

{ #category : #private }
SVGRootTag >> svgCanvas [
	" returns the SVG Canvas (not that 'canvas' is the HTML canvas) "
	
	^ svgCanvas
]

{ #category : #private }
SVGRootTag >> svgCanvas: aSVGCanvas [
	" sets the SVG Canvas (not that 'canvas' is the HTML canvas) "

	svgCanvas := aSVGCanvas
]

{ #category : #accessing }
SVGRootTag >> tag [

	^ 'svg'
]

{ #category : #attributes }
SVGRootTag >> width: aWidth [

	self attributeAt: 'width' put: aWidth svgAttributeValue.
]

{ #category : #public }
SVGRootTag >> with: aBlock [

	" use drawWith: [ : svgCanvas | ]"
	self shouldNotImplement.
]
