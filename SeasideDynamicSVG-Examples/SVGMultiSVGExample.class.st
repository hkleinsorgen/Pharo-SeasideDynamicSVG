Class {
	#name : #SVGMultiSVGExample,
	#superclass : #SVGExample,
	#instVars : [
		'exampleSVG',
		'lineExample'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'class initialization' }
SVGMultiSVGExample class >> path [

	^ 'SVG/MultiSVG'
]

{ #category : #accessing }
SVGMultiSVGExample >> children [
	
	^Array with: exampleSVG with: lineExample
]

{ #category : #'initialize-release' }
SVGMultiSVGExample >> initialize [
	
	super initialize.
	exampleSVG := SVGSmiley new.
	lineExample := SVGLineTest new
]

{ #category : #rendering }
SVGMultiSVGExample >> renderContentOn: html [ 

	html
		div: [html heading level: 2;
		with: [html text: 'SVG + callback example'].
	html text: 'Multiple SVG components (currently broken!)'].
	html render: exampleSVG.
	html render: lineExample.
	"IE annoying click and activate workaround"
	"it must be an external js file, just put the file on your apache root!"
	html html: '<script type="text/javascript" src="/iefix.js"></script>'
]
