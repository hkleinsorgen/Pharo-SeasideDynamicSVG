Class {
	#name : #SVGPathTag,
	#superclass : #SVGTag,
	#instVars : [
		'defaultRelative'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGPathTag >> absolute [
	
	defaultRelative _ false
]

{ #category : #accessing }
SVGPathTag >> addPointToPath: aPoint [
	
	self attributes
		at: 'd'
		append: aPoint x displayString
		separator: ' '.
	self attributes
		at: 'd'
		append: aPoint y displayString
		separator: ' '
]

{ #category : #accessing }
SVGPathTag >> addToPath: aString [
	
	self attributes at: 'd' append: aString separator: ' '
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> arcTo: aPoint radiusX: radiusX radiusY: radiusY rotation: rotation large: large sweep: sweep [
	
	self
		arcTo: aPoint
		radiusX: radiusX
		radiusY: radiusY
		rotation: rotation
		large: large
		sweep: sweep
		relative: self defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> arcTo: aPoint radiusX: radiusX radiusY: radiusY rotation: rotation large: large sweep: sweep relative: relative [
	
	self
		addToPath:
			(relative
				ifTrue: ['a']
				ifFalse: ['A']).
	self addToPath: radiusX.
	self addToPath: radiusY.
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
	
	self addToPath: 'z'
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> curveWithAll: points [
	
	self
		curveWithAll: points
		relative: self defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> curveWithAll: points relative: relative [
	
	self
		addToPath:
			(relative
				ifTrue: ['c']
				ifFalse: ['C']).
	points do: [:point | self addPointToPath: point]
]

{ #category : #private }
SVGPathTag >> defaultRelative [
	
	^defaultRelative ifNil: [false]
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> lineTo: aPoint [
	
	self
		lineTo: aPoint
		relative: self defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> lineTo: aPoint relative: relative [
	
	self
		addToPath:
			(relative
				ifTrue: ['l']
				ifFalse: ['L']).
	self addPointToPath: aPoint
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> moveTo: aPoint [
	
	self
		moveTo: aPoint
		relative: self defaultRelative
]

{ #category : #'accessing-path primitives' }
SVGPathTag >> moveTo: aPoint relative: relative [
	
	self
		addToPath:
			(relative
				ifTrue: ['m']
				ifFalse: ['M']).
	self addPointToPath: aPoint
]

{ #category : #accessing }
SVGPathTag >> relative [
	
	defaultRelative _ true
]

{ #category : #accessing }
SVGPathTag >> tag [
	
	^'path'
]
