Class {
	#name : #SVGSmileyExample,
	#superclass : #SVGExample,
	#instVars : [
		'smiley'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGSmileyExample class >> description [

	^ 'Demonstrates callbacks and various embedding/inlining methods' 
]

{ #category : #'instance creation' }
SVGSmileyExample class >> path [
	
	^'SVG/smiley'
]

{ #category : #accessing }
SVGSmileyExample >> children [
	^ Array with: smiley
]

{ #category : #'initialize-release' }
SVGSmileyExample >> initializeChildren [

	smiley := SVGSmiley new
]

{ #category : #rendering }
SVGSmileyExample >> title [

	^ 'SVG + callback example' 
]
