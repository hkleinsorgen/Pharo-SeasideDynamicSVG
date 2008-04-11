Class {
	#name : #SVGSmileyExample,
	#superclass : #SVGExample,
	#instVars : [
		'smiley'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'instance creation' }
SVGSmileyExample class >> path [
	
	^'SVG/smiley'
]

{ #category : #accessing }
SVGSmileyExample >> children [
	^ Array with: smiley
]

{ #category : #rendering }
SVGSmileyExample >> description [

	^ 'The SVG can be either embedded or inlined' 
]

{ #category : #'initialize-release' }
SVGSmileyExample >> initializeChildren [

	smiley := SVGSmiley new
]

{ #category : #rendering }
SVGSmileyExample >> title [

	^ 'SVG + callback example' 
]
