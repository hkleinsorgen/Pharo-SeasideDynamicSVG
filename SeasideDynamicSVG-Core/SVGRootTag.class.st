Class {
	#name : #SVGRootTag,
	#superclass : #SVGTag,
	#instVars : [
		'svgCanvas'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGRootTag >> baseProfile: aString [

	self attributeAt: 'baseProfile' put: aString .
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

	self openTag.
	canvas nest: [
		self before.
		aBlock value: self svgCanvas.
		self after
	].
	self closeTag.
	closed := true
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
SVGRootTag >> viewbox: aRectangleOrString [

	| str viewport |
	viewport := aRectangleOrString isString
		ifTrue: [ aRectangleOrString ]
		ifFalse: [
			str := String new writeStream.
			str nextPutAll: aRectangleOrString left toSVGString.
			str nextPut: $,.
			str nextPutAll: aRectangleOrString top toSVGString.
			str nextPut: $,.
			str nextPutAll: aRectangleOrString width toSVGString.
			str nextPut: $,.
			str nextPutAll: aRectangleOrString height toSVGString.
			str contents
		].
	self attributeAt: 'viewbox' put: viewport .
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
