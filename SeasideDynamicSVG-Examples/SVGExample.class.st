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
			app preferenceAt: #renderContinuationClass put: SVGHybridRenderContinuation.
			app preferenceAt: #sessionClass put: SVGSession.
		].
]

{ #category : #'class initialization' }
SVGExample class >> registerAll [
	"self registerAll"	

	self allSubclasses do: [ : sc | sc register ]
]

{ #category : #rendering }
SVGExample >> description [

	self subclassResponsibility 
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

{ #category : #initialization }
SVGExample >> initialize [

	super initialize.
	self initializeChildren.
	self embedSelector: #renderEmbedOn:.
]

{ #category : #initialization }
SVGExample >> initializeChildren [

	self subclassResponsibility 
]

{ #category : #rendering }
SVGExample >> renderContentOn: html [ 
	html div: 
		[ html heading
			level: 2 ;
			with: [ html text: self title ].
		html text: self description ].
	self renderEmbedSelectorsOn: html.
	self children do: [ : child | html render: child ].
	"IE annoying click and activate workaround"
	"it must be an external js file, just put the file on your apache root!"
	html html: '<script type="text/javascript" src="/iefix.js"></script>'
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

{ #category : #rendering }
SVGExample >> title [

	self subclassResponsibility 
]

{ #category : #rendering }
SVGExample >> updateRoot: aRoot [
	super updateRoot: aRoot.
	aRoot htmlAttributes at: 'xmlns:svg' put: 'http://www.w3.org/2000/svg'
]
