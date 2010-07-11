Class {
	#name : #SVGRootTag,
	#superclass : #SVGTag,
	#instVars : [
		'svgCanvas'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGRootTag >> baseProfile: aString [

	self attributeAt: 'baseProfile' put: aString .
]

{ #category : #accessing }
SVGRootTag >> clip: aShape [

	self attributeAt: 'clip' put: aShape
]

{ #category : #accessing }
SVGRootTag >> contentScriptType: aString [

	self attributeAt: 'contentScriptType' put: aString .
]

{ #category : #accessing }
SVGRootTag >> contentStyleType: aString [

	self attributeAt: 'contentStyleType' put: aString .
]

{ #category : #public }
SVGRootTag >> drawWith: aBlock [ 
	" switches to a SVG renderer and visitor "

	self openTag.
	canvas nest: [
		self before.
		self svgCanvas visitWith: aBlock.
		self after
	].
	self closeTag.
	closed := true
]

{ #category : #public }
SVGRootTag >> embedSVGComponent: aComponent width: aWidth height: aHeight [
	" inline component "
	
	aWidth notNil ifTrue: [ self width: aWidth ].
	aHeight notNil ifTrue: [ self height: aHeight ].
	aComponent setAttributesOfRootTag: self. 
	self drawWith: [ : svg | svg render: aComponent ].

]

{ #category : #accessing }
SVGRootTag >> height: aHeight [

	self attributeAt: 'height' put: aHeight .
]

{ #category : #initialization }
SVGRootTag >> initialize [

	super initialize.
	self attributeAt: 'xmlns' put: SVGRoot defaultNamespace. 
	self attributeAt: 'xmlns:xlink' put: SVGRoot xlinkNamespace.
]

{ #category : #accessing }
SVGRootTag >> overflow: aString [

	self attributeAt: 'overflow' put: aString
]

{ #category : #accessing }
SVGRootTag >> preserveAspectRatio: aString [

	self attributeAt: 'preserveAspectRatio' put: aString .
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

{ #category : #accessing }
SVGRootTag >> version: aString [

	self attributeAt: 'version' put: aString .
]

{ #category : #accessing }
SVGRootTag >> viewBox: aRectangleOrString [ 

	self 
		attributeAt: 'viewBox'
		put: aRectangleOrString toSVGViewBoxString
]

{ #category : #accessing }
SVGRootTag >> width: aWidth [

	self attributeAt: 'width' put: aWidth .
]

{ #category : #public }
SVGRootTag >> with: aBlock [

	" use drawWith: [ : svgCanvas | ]"
	self shouldNotImplement.
]

{ #category : #accessing }
SVGRootTag >> zoomAndPan: aString [

	self attributeAt: 'zoomAndPan' put: aString .
]
