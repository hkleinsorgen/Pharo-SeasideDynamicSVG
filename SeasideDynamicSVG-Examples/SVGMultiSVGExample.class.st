Class {
	#name : #SVGMultiSVGExample,
	#superclass : #SVGExample,
	#instVars : [
		'lineExample',
		'smiley'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGMultiSVGExample class >> description [ 
	
	^ 'Multiple SVG components on a single page' 
]

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

{ #category : #'initialize-release' }
SVGMultiSVGExample >> initializeChildren [

	smiley := SVGSmiley new.
	lineExample := SVGLineTest new
]

{ #category : #rendering }
SVGMultiSVGExample >> title [
	^ 'Multiple SVGs'
]
