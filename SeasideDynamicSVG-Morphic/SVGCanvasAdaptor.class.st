Class {
	#name : #SVGCanvasAdaptor,
	#superclass : #Canvas,
	#instVars : [
		'svgCanvas',
		'origin',
		'clipRect',
		'currentColor',
		'currentFont',
		'convertCoordinates'
	],
	#category : #'SeasideDynamicSVG-Morphic'
}

{ #category : #'instance creation' }
SVGCanvasAdaptor class >> onSVG: aSVGCanvas [

	^ self new
		initializeWith: aSVGCanvas;
		yourself
]

{ #category : #'balloon compatibility' }
SVGCanvasAdaptor >> aaLevel:newLevel [
	"ignore "
]

{ #category : #'balloon compatibility' }
SVGCanvasAdaptor >> asBalloonCanvas [

     ^self
]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> clipBy: aRectangle during: aBlock [
	^self translateBy: 0@0 clippingTo: aRectangle during: aBlock.

]

{ #category : #accessing }
SVGCanvasAdaptor >> clipRect [
	^clipRect.

]

{ #category : #accessing }
SVGCanvasAdaptor >> contentsOfArea: aRectangle into: aForm [
	" can't "
	
	self notYet
]

{ #category : #accessing }
SVGCanvasAdaptor >> convertCoordinates [

	^ convertCoordinates
]

{ #category : #accessing }
SVGCanvasAdaptor >> convertCoordinates: aBoolean [
	" true if coordinates should be adjusted (toSVGStrokeCoordinates) "
	
	convertCoordinates := aBoolean
]

{ #category : #'balloon compatibility' }
SVGCanvasAdaptor >> deferred: ignored [
]

{ #category : #testing }
SVGCanvasAdaptor >> doesRoundedCorners [ 

	^ false
]

{ #category : #'drawing-general' }
SVGCanvasAdaptor >> draw: anObject [

	^anObject drawSeasideSVGOn: self
]

{ #category : #'balloon compatibility' }
SVGCanvasAdaptor >> drawPath: anArray borderWidth: borderWidth borderColor: borderColor [

	self 
		drawPolygon: anArray
		color: nil
		borderWidth: borderWidth
		borderColor: borderColor

]

{ #category : #'drawing-polygons' }
SVGCanvasAdaptor >> drawPolygon: vertices color: c borderWidth: bw borderColor: bc [ 

	" hkl: maybe use vertices collect: [: p  | p toSVGStrokeCoordinates ] "
	
	svgCanvas polygon
		paint: [ : paint | paint fill: c; stroke: bc; strokeWidth: bw ];
		points: vertices.
]

{ #category : #'drawing-rectangles' }
SVGCanvasAdaptor >> drawRectangle: r color: fillColor borderWidth: borderWidth borderColor: borderColor [

	svgCanvas rectangle
		paint: [: paint | paint fill: fillColor; stroke: borderColor; strokeWidth: borderWidth ];
		rectangle: (self toSVGStrokeCoordinates: r)
]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	| textShape base |
	textShape := svgCanvas textShape.
	base := boundsRect bottomLeft.
	fontOrNil notNil 
		ifTrue: [ 
			textShape font: [ : font | font squeakFont: fontOrNil ].
			base := base - (0@fontOrNil descent).
		].
	textShape 
		transform: [ : t | t translate: base ];
		fill: c;
		stroke: c;
		with: (s asString copyFrom: firstIndex to: lastIndex)
]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c background: b [

	self fillRectangle: boundsRect color: b.
	self drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c 
]

{ #category : #drawing }
SVGCanvasAdaptor >> fillColor: aColor [

	svgCanvas rectangle
		stroke: nil; 
		fill: aColor;
		rectangle: clipRect.
]

{ #category : #'drawing-ovals' }
SVGCanvasAdaptor >> fillOval: r color: c borderWidth: bw borderColor: bc [ 

	svgCanvas ellipse
		paint: [ : paint | paint fill: c; stroke: bc; strokeWidth: bw ];
		rectangle: r
]

{ #category : #'drawing-rectangles' }
SVGCanvasAdaptor >> fillRectangle: r color: c [

	svgCanvas rectangle
		fill: c;
		stroke: nil;
		rectangle: r
]

{ #category : #'drawing-rectangles' }
SVGCanvasAdaptor >> fillRectangle: aRectangle fillStyle: aFillStyle [
	" not yet "
	
	self notYet.

]

{ #category : #'drawing-rectangles' }
SVGCanvasAdaptor >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [ 

	self drawRectangle: r color: fillColor borderWidth: borderWidth borderColor: borderColor
]

{ #category : #'drawing-rectangles' }
SVGCanvasAdaptor >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor [ 
	" not yet "

	self notYet.
	self frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: topLeftColor 
]

{ #category : #'drawing-general' }
SVGCanvasAdaptor >> fullDraw: anObject [

	self draw: anObject
]

{ #category : #initialization }
SVGCanvasAdaptor >> initializeWith: aSVGCanvas [

	svgCanvas := aSVGCanvas.
	convertCoordinates := true.
]

{ #category : #drawing }
SVGCanvasAdaptor >> line: pt1 to: pt2 brushForm: brush [ 

	svgCanvas line
		stroke: currentColor;
		from: (self toSVGStrokeCoordinates: pt1) to:  (self toSVGStrokeCoordinates: pt2)
]

{ #category : #drawing }
SVGCanvasAdaptor >> line: pt1 to: pt2 width: w color: c [ 

	svgCanvas line
		strokeWidth: w;
		stroke: c;
		from: (self toSVGStrokeCoordinates: pt1) to:  (self toSVGStrokeCoordinates: pt2)
]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> nest: aBlock [

	^ aBlock value: self
]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> notYet [

	Transcript show: 'Not yet implemented: ', thisContext sender printString;cr.
	
]

{ #category : #accessing }
SVGCanvasAdaptor >> origin [
	^origin.

]

{ #category : #drawing }
SVGCanvasAdaptor >> paragraph: para bounds: bounds color: c [ 

	self notYet.
]

{ #category : #initialization }
SVGCanvasAdaptor >> reset [

	super reset.
	origin := 0 @ 0.
	clipRect := 0 @ 0 corner: 10000 @ 10000.
	currentColor := nil
]

{ #category : #'balloon compatibility' }
SVGCanvasAdaptor >> resetEngine [
]

{ #category : #'drawing-images' }
SVGCanvasAdaptor >> stencil: stencilForm at: aPoint color: aColor [

	self notYet.

]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> toSVGStrokeCoordinates: aGeometric [

	^ self convertCoordinates 
		ifTrue: [ aGeometric toSVGStrokeCoordinates ]
		ifFalse: [ aGeometric ]
]

{ #category : #'balloon compatibility' }
SVGCanvasAdaptor >> transformBy: aMatrix [
	
	self notYet
]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize [ 
	" not yet "
	
	self notYet.
	^ self nest: aBlock
]

{ #category : #'balloon compatibility' }
SVGCanvasAdaptor >> transformBy: aDisplayTransform during: aBlock [
	" not yet "
	
	self notYet.
	^ self nest: aBlock
]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> translateBy: delta clippingTo: aRect during: aBlock [

	svgCanvas group
		transform: [ : t | t translate: delta ];
		with: [ self nest: aBlock ]
]

{ #category : #'drawing-support' }
SVGCanvasAdaptor >> translateBy: delta during: aBlock [

	svgCanvas group
		transform: [ : t | t translate: delta ];
		with: [ self nest: aBlock ]
]

{ #category : #'balloon compatibility' }
SVGCanvasAdaptor >> warpFrom: sourceQuad toRect: innerRect [
	" cant "
	
	self notYet.
]
