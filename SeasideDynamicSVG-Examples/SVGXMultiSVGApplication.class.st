Class {
	#name : #SVGXMultiSVGApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'lineExample',
		'smiley'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXMultiSVGApplication class >> description [ 
	
	^ 'Multiple SVG components on a single page' 
]

{ #category : #'class initialization' }
SVGXMultiSVGApplication class >> path [

	^ 'SVG/MultiSVG'
]

{ #category : #accessing }
SVGXMultiSVGApplication >> children [
	^ Array 
		with: smiley
		with: lineExample
]

{ #category : #'initialize-release' }
SVGXMultiSVGApplication >> initializeChildren [
	smiley := SVGXSmiley new.
	lineExample := SVGXLineTest new
]

{ #category : #rendering }
SVGXMultiSVGApplication >> title [
	^ 'Multiple SVGs'
]
