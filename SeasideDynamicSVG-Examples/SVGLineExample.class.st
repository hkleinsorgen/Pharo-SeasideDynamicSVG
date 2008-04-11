Class {
	#name : #SVGLineExample,
	#superclass : #SVGExample,
	#instVars : [
		'lineExample'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGLineExample class >> description [

	^ 'Shows some graphics primitives'
]

{ #category : #'instance creation' }
SVGLineExample class >> path [
	
	^'SVG/lines'
]

{ #category : #accessing }
SVGLineExample >> children [
	
	^Array with: lineExample
]

{ #category : #'initialize-release' }
SVGLineExample >> initializeChildren [
	
	lineExample := SVGLineTest new
]

{ #category : #rendering }
SVGLineExample >> title [

	^ 'SVG line example'
]
