Class {
	#name : #SVGXChooserApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'svgComponent'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXChooserApplication class >> description [

	^ 'Choose a SVG component to display'
]

{ #category : #'class initialization' }
SVGXChooserApplication class >> path [
	
	^'SVG/chooser'
]

{ #category : #accessing }
SVGXChooserApplication >> children [

	^ Set with: svgComponent
]

{ #category : #initialization }
SVGXChooserApplication >> initializeChildren [
	svgComponent := SVGXSmiley new
]

{ #category : #rendering }
SVGXChooserApplication >> renderActionsOn: html [ 

	super renderActionsOn: html .
	self renderChooserOn: html.
	
]

{ #category : #rendering }
SVGXChooserApplication >> renderChooserOn: html [ 
	html div
		style: 'padding-bottom: 1em' ;
		with: 
			[ html form: 
				[ html select
					list: SVGXExample allSubclasses ;
					selected: svgComponent class ;
					beSubmitOnChange ;
					callback: 
						[ : svgComponentClass | 
						svgComponent := svgComponentClass new.
						svgComponent embedSelector: self embedSelector ] ] ]
]

{ #category : #accessing }
SVGXChooserApplication >> title [

	^ 'Chooser'
]
