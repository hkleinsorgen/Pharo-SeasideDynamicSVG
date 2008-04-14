Class {
	#name : #SVGXAjaxApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'svg'
	],
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #accessing }
SVGXAjaxApplication class >> description [

	^ 'Ajax with SVG'
]

{ #category : #accessing }
SVGXAjaxApplication class >> path [
	
	^'SVG/ajax'
]

{ #category : #accessing }
SVGXAjaxApplication class >> register [

	| app |
	app := super register.
	SVGStaticSULibrary default.
	app addLibrary: SVGStaticSULibrary.
	^ app
]

{ #category : #accessing }
SVGXAjaxApplication >> children [

	^ Set with: svg
]

{ #category : #initialization }
SVGXAjaxApplication >> initializeChildren [
	svg := SVGXAjaxTest new
]

{ #category : #rendering }
SVGXAjaxApplication >> renderOwnContentOn: html [ 

	html paragraph.
]

{ #category : #accessing }
SVGXAjaxApplication >> title [

	^ 'Ajax'
]
