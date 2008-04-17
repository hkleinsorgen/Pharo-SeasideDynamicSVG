Class {
	#name : #SVGPathTag,
	#superclass : #SVGStrokesBrush,
	#instVars : [
		'path'
	],
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGPathTag >> addPointToPath: aPoint [
	
	self path addPointToPath: aPoint
]

{ #category : #accessing }
SVGPathTag >> addToPath: aString [
	
	self path addPointToPath: aString
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep [

	self path arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep relative: relative [
	
	self path arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep relative: relative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> closePath [
	
	self path closePath
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> curveWithAll: points [ 

	self path curveWithAll: points 
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> curveWithAll: points relative: relative [ 

	self path curveWithAll: points relative: relative 
]

{ #category : #defaults }
SVGPathTag >> defaultIsAbsolute [
	" sets the default value used when adding primitives without specifying ...relative: <aBoolean> "

	self path defaultIsAbsolute
]

{ #category : #defaults }
SVGPathTag >> defaultIsRelative [
	" sets the default value used when adding primitives without specifying ...relative: <aBoolean> "

	self path defaultIsRelative
]

{ #category : #convenience }
SVGPathTag >> drawPieSegmentFrom:  startAngle angle: angle length: length [

	self path drawPieSegmentFrom:  startAngle angle: angle length: length
]

{ #category : #convenience }
SVGPathTag >> drawPieSegmentFrom:  startAngle to: angle length: length [

	self path drawPieSegmentFrom:  startAngle to: angle length: length
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> lineTo: aPoint [ 

	self path lineTo: aPoint
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> lineTo: aPoint relative: relative [ 

	self path lineTo: aPoint relative: relative 
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> moveTo: aPoint [ 

	self path moveTo: aPoint 
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> moveTo: aPoint relative: relative [ 

	self path moveTo: aPoint relative: relative 
]

{ #category : #public }
SVGPathTag >> openTag [

	| d |
	(path notNil and: [ (self attributes includesKey: 'd') not ])
		ifTrue: [
			d := path pathString.
			d notNil ifTrue: [ self attributeAt: 'd' put: d ].
		].
	super openTag.
]

{ #category : #accessing }
SVGPathTag >> path [

	path isNil ifTrue: [ path := SVGPath new ].
	^ path
]

{ #category : #accessing }
SVGPathTag >> path: aBlockOrString [

	^ aBlockOrString isString
		ifTrue: [ self attributeAt: 'd' put: aBlockOrString ] 
		ifFalse: [ aBlockOrString value: self path ].
]

{ #category : #accessing }
SVGPathTag >> tag [
	
	^'path'
]
