Class {
	#name : #SVGExternalSVGExample,
	#superclass : #WAComponent,
	#instVars : [
		'exampleSVG'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'class initialization' }
SVGExternalSVGExample class >> initialize [
	
	self register.
]

{ #category : #'instance creation' }
SVGExternalSVGExample class >> path [
	
	^'SVG/example'
]

{ #category : #'class initialization' }
SVGExternalSVGExample class >> register [
	
	| app |
	app := self registerAsApplication: self path.
	app preferenceAt: #renderContinuationClass put:
			SVGHybridRenderContinuation
]

{ #category : #accessing }
SVGExternalSVGExample >> children [
	
	^Array with: exampleSVG
]

{ #category : #'initialize-release' }
SVGExternalSVGExample >> initialize [
	
	super initialize.
	exampleSVG := SVGExampleSmiley new
]

{ #category : #rendering }
SVGExternalSVGExample >> renderContentOn: html [ 

	html
		div: [html heading level: 2;
		with: [html text: 'SVG + callback example'].
	html text: 'The SVG is a separate document, not inlined.'].
	html render: exampleSVG.
	"IE annoying click and activate workaround"
	"it must be an external js file, just put the file on your apache root!"
	html html: '<script type="text/javascript" src="/iefix.js"></script>'
]
