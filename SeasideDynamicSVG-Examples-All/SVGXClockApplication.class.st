Class {
	#name : #SVGXClockApplication,
	#superclass : #SVGXPrototypeApplication,
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #accessing }
SVGXClockApplication class >> description [

	^ 'Ajax clock'
]

{ #category : #accessing }
SVGXClockApplication class >> path [
	
	^'SVG/ajax-clock'
]

{ #category : #'as yet unclassified' }
SVGXClockApplication >> initializeChildren [
	svg := SVGXClock new
]

{ #category : #'as yet unclassified' }
SVGXClockApplication >> title [

	^ 'Clock'
]
