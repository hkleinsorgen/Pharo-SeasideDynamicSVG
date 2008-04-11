Class {
	#name : #SVGXApplication,
	#superclass : #WAComponent,
	#instVars : [
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'class initialization' }
SVGXApplication class >> initialize [
	
	self register
]

{ #category : #'class initialization' }
SVGXApplication class >> path [

	^ nil
]

{ #category : #'class initialization' }
SVGXApplication class >> register [
	
	| app |
	self path notNil
		ifTrue: [
			app := self registerAsApplication: self path.
			app preferenceAt: #renderContinuationClass put: SVGAwareRenderContinuation.
			app preferenceAt: #sessionClass put: SVGSession.
		].
]

{ #category : #'class initialization' }
SVGXApplication class >> registerAll [
	"self registerAll"	

	self allSubclasses do: [ : sc | sc register ]
]

{ #category : #rendering }
SVGXApplication >> description [

	^ self class description
]

{ #category : #accessing }
SVGXApplication >> embedSelector [

	^ embedSelector
]

{ #category : #accessing }
SVGXApplication >> embedSelector: aSelector [

	embedSelector := aSelector.
	self children do: [ : child | child embedSelector: aSelector ]
]

{ #category : #initialization }
SVGXApplication >> initialize [

	super initialize.
	self initializeChildren.
	self embedSelector: #renderEmbedOn:.
]

{ #category : #initialization }
SVGXApplication >> initializeChildren [

	self subclassResponsibility 
]

{ #category : #rendering }
SVGXApplication >> renderActionsOn: html [ 

	self renderEmbedSelectorsOn: html.

]

{ #category : #rendering }
SVGXApplication >> renderContentOn: html [ 
	html div: 
		[ html heading
			level: 2 ;
			with: [ html text: self title ].
		html text: self description ].
	self renderActionsOn: html.
	self children do: [ : child | html render: child ].
	"IE annoying click and activate workaround"
	"it must be an external js file, just put the file on your apache root!"
	html html: '<script type="text/javascript" src="/iefix.js"></script>'
]

{ #category : #rendering }
SVGXApplication >> renderEmbedSelector: aSelector text: text on: canvas [ 

	canvas anchor
		callback: [ self embedSelector: aSelector];
		with: [aSelector = self embedSelector
				ifTrue: [canvas
						emphasis: [canvas text: text]]
				ifFalse: [canvas text: text]]
]

{ #category : #rendering }
SVGXApplication >> renderEmbedSelectorsOn: html [

	html div class: 'toolbar';
		with: [
			html text: 'Embed/inline method: '.
			self renderEmbedSelector: #renderEmbedOn: text: '<embed>' on: html .
			html space.
			self renderEmbedSelector: #renderObjectOn: text: '<object>' on: html .
			html space.
			self renderEmbedSelector: #renderIFrameOn: text: '<iframe>' on: html .
			html space.
			self renderEmbedSelector: #renderInlinedOn: text: 'inlined' on: html .
		].

]

{ #category : #rendering }
SVGXApplication >> style [ 

^ '
body {
  padding: 0;
  font-size: small;
  font-family: Verdana, sans-serif;
  text-align: left;
  color: #333333;
  background: #FFFFFF;
}

a:link {
  color: #3366FF;
  text-decoration: none;
}

a:visited {
  color: #666699;
}

a:hover {
  text-decoration: underline;
}

a:active {
  color: #5B73FF;
  text-decoration: none;
}

em {
   font-style: normal;
   font-weight: bold;
}

div.toolbar { 
	padding-top: 0.25em;
	padding-bottom: 0.25em;
	margin-top: 1em; 
	margin-bottom: 1em; 
	background-color: #EEEEEE; 
	border-width: 1px; 
	border-top-style: solid; 
	border-bottom-style:solid; 
	border-color: #AAAAAA
}'

]

{ #category : #rendering }
SVGXApplication >> title [

	self subclassResponsibility 
]

{ #category : #rendering }
SVGXApplication >> updateRoot: aRoot [
	super updateRoot: aRoot.
	aRoot htmlAttributes at: 'xmlns:svg' put: 'http://www.w3.org/2000/svg'
]
