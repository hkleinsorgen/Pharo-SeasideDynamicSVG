Class {
	#name : #SVGXLineApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'lineExample'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXLineApplication class >> description [

	^ 'Shows some graphics primitives'
]

{ #category : #'instance creation' }
SVGXLineApplication class >> path [
	
	^'SVG/lines'
]

{ #category : #accessing }
SVGXLineApplication >> children [
	
	^Array with: lineExample
]

{ #category : #'initialize-release' }
SVGXLineApplication >> initializeChildren [
	lineExample := SVGXLineTest new
]

{ #category : #rendering }
SVGXLineApplication >> title [

	^ 'SVG line example'
]
