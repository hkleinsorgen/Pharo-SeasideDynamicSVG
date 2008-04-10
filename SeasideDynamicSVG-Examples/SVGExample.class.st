Class {
	#name : #SVGExample,
	#superclass : #WAComponent,
	#instVars : [
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'class initialization' }
SVGExample class >> initialize [
	
	self register
]

{ #category : #'class initialization' }
SVGExample class >> path [

	^ nil
]

{ #category : #'class initialization' }
SVGExample class >> register [
	
	| app |
	self path notNil
		ifTrue: [
			app := self registerAsApplication: self path.
			app preferenceAt: #renderContinuationClass put: SVGHybridRenderContinuation
		].
]

{ #category : #'class initialization' }
SVGExample class >> registerAll [
	"self registerAll"	

	self allSubclasses do: [ : sc | sc register ]
]

{ #category : #accessing }
SVGExample >> embedSelector [

	^ embedSelector
]

{ #category : #accessing }
SVGExample >> embedSelector: aSelector [

	embedSelector := aSelector.
	self children do: [ : child | child embedSelector: aSelector ]
]

{ #category : #rendering }
SVGExample >> renderEmbedSelector: aSelector text: text on: canvas [ 

	canvas anchor
		callback: [ self embedSelector: aSelector];
		with: [aSelector = self embedSelector
				ifTrue: [canvas
						emphasis: [canvas text: text]]
				ifFalse: [canvas text: text]]
]

{ #category : #rendering }
SVGExample >> renderEmbedSelectorsOn: canvas [
	
	self renderEmbedSelector: #renderEmbedOn: text: '<embed>' on: canvas .
	canvas space.
	self renderEmbedSelector: #renderObjectOn: text: '<object>' on: canvas .
	canvas space.
	self renderEmbedSelector: #renderIFrameOn: text: '<iframe>' on: canvas .
	canvas space.
	self renderEmbedSelector: #renderInlinedOn: text: 'inlined' on: canvas .

]
