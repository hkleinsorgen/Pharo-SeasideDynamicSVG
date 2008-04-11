Class {
	#name : #SVGXSmileyApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'smiley'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXSmileyApplication class >> description [

	^ 'Demonstrates callbacks and various embedding/inlining methods' 
]

{ #category : #'instance creation' }
SVGXSmileyApplication class >> path [
	
	^'SVG/smiley'
]

{ #category : #accessing }
SVGXSmileyApplication >> children [
	^ Array with: smiley
]

{ #category : #'initialize-release' }
SVGXSmileyApplication >> initializeChildren [
	smiley := SVGXSmiley new
]

{ #category : #rendering }
SVGXSmileyApplication >> title [

	^ 'SVG + callback example' 
]
