Class {
	#name : #SVGPath,
	#superclass : #Object,
	#instVars : [
		'defaultRelative',
		'pathStream'
	],
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #'as yet unclassified' }
SVGPath class >> new [

	" VW compatibility "
	^ self basicNew initialize
]

{ #category : #accessing }
SVGPath >> addPointToPath: aPoint [
	
	pathStream position > 0
		ifTrue: [ pathStream nextPut: Character space ].
	pathStream nextPutAll: aPoint x toSVGString.
	pathStream nextPut: $,.
	pathStream nextPutAll: aPoint y toSVGString.
]

{ #category : #accessing }
SVGPath >> addToPath: aValue [
	
	pathStream position > 0
		ifTrue: [ pathStream nextPut: Character space ].
	pathStream nextPutAll: aValue toSVGString.
]

{ #category : #'accessing-path primitives' }
SVGPath >> arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep [ 
	self 
		arcTo: aPoint
		radius: radiusXAndY
		rotation: rotation
		large: large
		sweep: sweep
		relative: defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPath >> arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep relative: relative [
	
	self
		addToPath:
			(relative
				ifTrue: ['a']
				ifFalse: ['A']).
	self addToPath: radiusXAndY x.
	self addToPath: radiusXAndY y.
	self addToPath: rotation.
	self
		addToPath:
			(large
				ifTrue: ['1']
				ifFalse: ['0']).
	self
		addToPath:
			(sweep
				ifTrue: ['1']
				ifFalse: ['0']).
	self addPointToPath: aPoint
]

{ #category : #'accessing-path primitives' }
SVGPath >> closePath [
	
	self addToPath: 'z'.
]

{ #category : #'accessing-path primitives' }
SVGPath >> curveWithAll: points [ 
	self 
		curveWithAll: points
		relative: defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPath >> curveWithAll: points relative: relative [ 

	self
		addToPath: (relative
				ifTrue: ['c']
				ifFalse: ['C']).
	points
		do: [:point | self addPointToPath: point]
]

{ #category : #defaults }
SVGPath >> defaultIsAbsolute [
	" sets the default value used when adding primitives without specifying ...relative: <aBoolean> "

	defaultRelative := false
]

{ #category : #defaults }
SVGPath >> defaultIsRelative [
	" sets the default value used when adding primitives without specifying ...relative: <aBoolean> "

	defaultRelative := true
]

{ #category : #convenience }
SVGPath >> drawPieSegmentFrom:  startAngle angle: angle length: length [
	self drawPieSegmentFrom: startAngle to: startAngle + angle length: length
]

{ #category : #convenience }
SVGPath >> drawPieSegmentFrom:  startAngle to: angle length: length [
"always start from 0@0, because you should use translate to set the origin"
	self moveTo: 0@0.
	self lineTo: (Point r: length degrees: startAngle).
	self 
		arcTo: (Point r: length degrees: angle)
		radius: length@length
		rotation: 0
		large: (startAngle - angle) abs > 180
		sweep: true.
	self lineTo: 0@0.
	self closePath.
]

{ #category : #'initialize-release' }
SVGPath >> initialize [

	super initialize.
	defaultRelative := false.
	pathStream := String new writeStream.
]

{ #category : #'accessing-path primitives' }
SVGPath >> lineTo: aPoint [ 
	self 
		lineTo: aPoint
		relative: defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPath >> lineTo: aPoint relative: relative [ 

	self
		addToPath: (relative
				ifTrue: ['l']
				ifFalse: ['L']).
	self addPointToPath: aPoint
]

{ #category : #'accessing-path primitives' }
SVGPath >> moveTo: aPoint [ 
	self 
		moveTo: aPoint
		relative: defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPath >> moveTo: aPoint relative: relative [ 

	self
		addToPath: (relative
				ifTrue: ['m']
				ifFalse: ['M']).
	self addPointToPath: aPoint
]

{ #category : #accessing }
SVGPath >> pathString [

	^ pathStream contents
]
