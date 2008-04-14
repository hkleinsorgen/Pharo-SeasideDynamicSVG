Class {
	#name : #SVGPathTag,
	#superclass : #SVGStrokesBrush,
	#instVars : [
		'defaultRelative'
	],
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGPathTag >> addPointToPath: aPoint [
	
	self attributes
		at: 'd'
		append: aPoint x 
		separator: ' '.
	self attributes
		at: 'd'
		append: aPoint y 
		separator: ','
]

{ #category : #accessing }
SVGPathTag >> addToPath: aString [
	
	self attributes at: 'd' append: aString separator: ' '
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep [ 
	self 
		arcTo: aPoint
		radius: radiusXAndY
		rotation: rotation
		large: large
		sweep: sweep
		relative: defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> arcTo: aPoint radius: radiusXAndY rotation: rotation large: large sweep: sweep relative: relative [
	
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
SVGPathTag >> closePath [
	
	self addToPath: 'z'.
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> curveWithAll: points [ 
	self 
		curveWithAll: points
		relative: defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> curveWithAll: points relative: relative [ 

	self
		addToPath: (relative
				ifTrue: ['c']
				ifFalse: ['C']).
	points
		do: [:point | self addPointToPath: point]
]

{ #category : #defaults }
SVGPathTag >> defaultIsAbsolute [
	" sets the default value used when adding primitives without specifying ...relative: <aBoolean> "

	defaultRelative := false
]

{ #category : #defaults }
SVGPathTag >> defaultIsRelative [
	" sets the default value used when adding primitives without specifying ...relative: <aBoolean> "

	defaultRelative := true
]

{ #category : #convenience }
SVGPathTag >> drawPieSegmentFrom:  startAngle angle: angle length: length [
	self drawPieSegmentFrom: startAngle to: startAngle + angle length: length
]

{ #category : #convenience }
SVGPathTag >> drawPieSegmentFrom:  startAngle to: angle length: length [
"always start from 0@0, because you should use translate to set the origin"
	self moveTo: 0@0.
	self lineTo: (Point r: length degrees: startAngle).
	self 
		arcTo: (Point r: length degrees: angle)
		radius: length@length
		rotation: 0
		large: false
		sweep: true.
	self lineTo: 0@0.
	self closePath.
]

{ #category : #initialization }
SVGPathTag >> initialize [

	super initialize.
	defaultRelative := false.

]

{ #category : #'accessing-path primitives' }
SVGPathTag >> lineTo: aPoint [ 
	self 
		lineTo: aPoint
		relative: defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> lineTo: aPoint relative: relative [ 

	self
		addToPath: (relative
				ifTrue: ['l']
				ifFalse: ['L']).
	self addPointToPath: aPoint
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> moveTo: aPoint [ 
	self 
		moveTo: aPoint
		relative: defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> moveTo: aPoint relative: relative [ 

	self
		addToPath: (relative
				ifTrue: ['m']
				ifFalse: ['M']).
	self addPointToPath: aPoint
]

{ #category : #accessing }
SVGPathTag >> tag [
	
	^'path'
]
