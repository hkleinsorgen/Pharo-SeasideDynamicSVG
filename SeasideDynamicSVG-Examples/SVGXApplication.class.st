Class {
	#name : #SVGXApplication,
	#superclass : #WAComponent,
	#instVars : [
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'class initialization' }
SVGXApplication class >> path [

	^ nil
]

{ #category : #'class initialization' }
SVGXApplication class >> register [
	
	| app |
	^ self path notNil
		ifTrue: [
			app := self registerAsApplication: self path.
			app addLibrary: SVGUserAgentLibrary.
			app
		]
		ifFalse: [ nil ] 
]

{ #category : #'class initialization' }
SVGXApplication class >> registerAll [
	"self registerAll"	

	self allSubclasses do: [ : sc | sc register ]
]

{ #category : #rendering }
SVGXApplication >> containerStyle [ 

^
'
	padding: 1em;
	border: 1px dashed #ccc ;
'

]

{ #category : #accessing }
SVGXApplication >> description [

	^ self class description
]

{ #category : #accessing }
SVGXApplication >> embedSelector [

	embedSelector isNil ifTrue: [ embedSelector := #renderInlinedOn: ].
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

]

{ #category : #initialization }
SVGXApplication >> initializeChildren [

	self subclassResponsibility 
]

{ #category : #rendering }
SVGXApplication >> renderContentOn: html [ 

	self renderHeaderOn: html.
	self renderOwnContentOn: html.
	self children do: [ : child | html render: child ] separatedBy: [ html paragraph ].
	self renderFooterOn: html .

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

	html div class: 'ToolbarRow'; with: [
		html text: 'Embed/inline method: '.
		self renderEmbedSelector: #renderInlinedOn: text: 'inlined' on: html .
		html space.
		self renderEmbedSelector: #renderObjectOn: text: '<object>' on: html .
		html space.
		self renderEmbedSelector: #renderIFrameOn: text: '<iframe>' on: html .
		html space.
		self renderEmbedSelector: #renderEmbedOn: text: '<embed>' on: html .
	].

]

{ #category : #rendering }
SVGXApplication >> renderExportOn: html [

	html div class: 'ToolbarRow'; with: [
		html anchor callback: [ self exportSVG ]; with: [ html text: 'Export'].
	].
]

{ #category : #rendering }
SVGXApplication >> renderFooterOn: html [ 

	html div
		class: 'Footer';
		with: [ html text: 'Browser adaptor: ', html context userAgentAdaptor class name ].

]

{ #category : #rendering }
SVGXApplication >> renderHeaderOn: html [ 

	html div: [ 
		html heading
			level: 2 ;
			with: [ html text: self title ].
		html text: self description.
		html paragraph.
	 ].

]

{ #category : #rendering }
SVGXApplication >> renderOwnContentOn: html [ 

	html div class: 'Toolbar';
		with: [
			self renderToolbarContentOn: html
		].

]

{ #category : #rendering }
SVGXApplication >> renderToolbarContentOn: html [

	self renderEmbedSelectorsOn: html	.
	self renderExportOn: html.

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

div.Toolbar { 
	padding-top: 0.25em;
	padding-bottom: 0.25em;
	margin-top: 1em; 
	margin-bottom: 1em; 
	background-color: #EEEEEE; 
	border-width: 1px; 
	border-top-style: solid; 
	border-bottom-style:solid; 
	border-color: #AAAAAA
}

div.ToolbarRow {
	padding: 0.25em;
}

div.Footer {
	padding-top: 1em;
	font-size: smaller;
}

div.SVGContainer {
', self containerStyle, 
'
}
'

]

{ #category : #accessing }
SVGXApplication >> title [

	self subclassResponsibility 
]
