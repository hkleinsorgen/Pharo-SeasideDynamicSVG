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
	app := self registerAsApplication: self path.
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
SVGExternalSVGExample >> renderContentOn: html [
	"very bad hack, because otherwise html is rendered also for svg"
	html context isSVGContext ifFalse: [html
		div:
			[(html heading)
				level: 2;
				with: [html text: 'SVG + callback example'].
			html text: 'The SVG is a separate document, not inlined.']].
	html render: exampleSVG
]
