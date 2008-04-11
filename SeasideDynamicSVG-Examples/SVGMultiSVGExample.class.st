Class {
	#name : #SVGMultiSVGExample,
	#superclass : #SVGExample,
	#instVars : [
		'lineExample',
		'smiley'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'class initialization' }
SVGMultiSVGExample class >> path [

	^ 'SVG/MultiSVG'
]

{ #category : #accessing }
SVGMultiSVGExample >> children [
	^ Array 
		with: smiley
		with: lineExample
]

{ #category : #rendering }
SVGMultiSVGExample >> description [ 
	
	^ 'Multiple SVG components' 
]

{ #category : #'initialize-release' }
SVGMultiSVGExample >> initializeChildren [

	smiley := SVGSmiley new.
	lineExample := SVGLineTest new
]

{ #category : #rendering }
SVGMultiSVGExample >> title [
	^ 'SVG + callback example'
]
