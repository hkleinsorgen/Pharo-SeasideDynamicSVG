Class {
	#name : #SVGLineExample,
	#superclass : #SVGExample,
	#instVars : [
		'lineExample'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'instance creation' }
SVGLineExample class >> path [
	
	^'SVG/lines'
]

{ #category : #accessing }
SVGLineExample >> children [
	
	^Array with: lineExample
]

{ #category : #rendering }
SVGLineExample >> description [

	^ ''
]

{ #category : #'initialize-release' }
SVGLineExample >> initializeChildren [
	
	lineExample := SVGLineTest new
]

{ #category : #rendering }
SVGLineExample >> title [

	^ 'SVG line example'
]
