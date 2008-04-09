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
	
	| app |
	app _ self registerAsApplication: self path.
	app preferenceAt: #renderContinuationClass put:
			SVGHybridRenderContinuation
]

{ #category : #'instance creation' }
SVGExternalSVGExample class >> path [
	
	^'SVG/example'
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
SVGExternalSVGExample >> renderContentOn: canvas [
	
	canvas
		div:
			[(canvas heading)
				level: 2;
				with: [canvas text: 'SVG + callback example'].
			canvas text: 'The SVG is a separate document, not inlined.'].
	canvas render: exampleSVG
]
