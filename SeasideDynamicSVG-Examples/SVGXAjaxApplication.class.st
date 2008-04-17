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
SVGXAjaxApplication >> children [

	^ Set with: svg
]

{ #category : #rendering }
SVGXAjaxApplication >> renderOwnContentOn: html [ 

	html paragraph.
]
