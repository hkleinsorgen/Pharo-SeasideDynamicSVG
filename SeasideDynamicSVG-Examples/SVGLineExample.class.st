Class {
	#name : #SVGLineExample,
	#superclass : #WAComponent,
	#instVars : [
		'lineExample'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'class initialization' }
SVGLineExample class >> initialize [
	
	self register.
]

{ #category : #'instance creation' }
SVGLineExample class >> path [
	
	^'SVG/lines'
]

{ #category : #'class initialization' }
SVGLineExample class >> register [
	
	| app |
	app := self registerAsApplication: self path.
	app preferenceAt: #renderContinuationClass put:
			SVGHybridRenderContinuation
]

{ #category : #accessing }
SVGLineExample >> children [
	
	^Array with: lineExample
]

{ #category : #'initialize-release' }
SVGLineExample >> initialize [
	
	super initialize.
	lineExample := SVGLineTest new
]

{ #category : #rendering }
SVGLineExample >> renderContentOn: html [ 

	html
		div: [html heading: 'SVG line example'].
	html render: lineExample.
	
	"IE annoying click and activate workaround"
	"it must be an external js file, just put the file on your apache root!"
	html html: '<script type="text/javascript" src="/iefix.js"></script>'
]
