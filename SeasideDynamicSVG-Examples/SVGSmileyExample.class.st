Class {
	#name : #SVGSmileyExample,
	#superclass : #SVGExample,
	#instVars : [
		'smiley'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'instance creation' }
SVGSmileyExample class >> path [
	
	^'SVG/smiley'
]

{ #category : #accessing }
SVGSmileyExample >> children [
	^ Array with: smiley
]

{ #category : #'initialize-release' }
SVGSmileyExample >> initialize [
	super initialize.
	smiley := SVGSmiley new
]

{ #category : #rendering }
SVGSmileyExample >> renderContentOn: html [ 
	html div: 
		[ html heading
			level: 2 ;
			with: [ html text: 'SVG + callback example' ].
		html text: 'The SVG can be either embedded or inlined' ].
	html render: smiley.
	"IE annoying click and activate workaround"
	"it must be an external js file, just put the file on your apache root!"
	html html: '<script type="text/javascript" src="/iefix.js"></script>'
]
