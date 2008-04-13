Class {
	#name : #SVGXAjaxApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'svg'
	],
	#category : #'SeasideDynamicSVG-Examples'
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
SVGXAjaxApplication >> renderContentOn: html [ 

	 html heading: 'Ajax Test'.
	self children do: [ : child | html render: child ]
]

{ #category : #rendering }
SVGXAjaxApplication >> renderSVGOn: html [ 
	html render: self svg
]
