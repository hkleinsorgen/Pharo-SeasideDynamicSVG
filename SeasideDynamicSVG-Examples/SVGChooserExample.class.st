Class {
	#name : #SVGChooserExample,
	#superclass : #SVGExample,
	#instVars : [
		'svgComponent'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGChooserExample class >> description [

	^ 'Choose a SVG component to display'
]

{ #category : #'class initialization' }
SVGChooserExample class >> path [
	
	^'SVG/chooser'
]

{ #category : #accessing }
SVGChooserExample >> children [

	^ Set with: svgComponent
]

{ #category : #initialization }
SVGChooserExample >> initializeChildren [

	svgComponent := SVGSmiley new
]

{ #category : #rendering }
SVGChooserExample >> renderActionsOn: html [ 

	super renderActionsOn: html .
	self renderChooserOn: html.
	
]

{ #category : #rendering }
SVGChooserExample >> renderChooserOn: html [ 

	html div style: 'padding-bottom: 1em'; with: [
		html form: [
			html select 
				list: SVGExampleDocument allSubclasses;
				selected: svgComponent class;
				beSubmitOnChange;
				callback: [:svgComponentClass | 
					svgComponent := svgComponentClass new. 
					svgComponent embedSelector:  self embedSelector
				]
		]
	]
]

{ #category : #accessing }
SVGChooserExample >> title [

	^ 'Chooser'
]
