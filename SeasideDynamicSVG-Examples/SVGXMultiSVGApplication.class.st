Class {
	#name : #SVGXMultiSVGApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'example1',
		'example2'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXMultiSVGApplication class >> description [ 
	
	^ 'Two SVG components on a single page' 
]

{ #category : #'class initialization' }
SVGXMultiSVGApplication class >> path [

	^ 'SVG/MultiSVG'
]

{ #category : #accessing }
SVGXMultiSVGApplication >> children [
	^ Array 
		with: example2
		with: example1
]

{ #category : #'initialize-release' }
SVGXMultiSVGApplication >> initializeChildren [
	example2 := SVGXGradient new.
	example1 := SVGXLineTest new
]

{ #category : #rendering }
SVGXMultiSVGApplication >> title [
	^ 'Multiple SVGs'
]
