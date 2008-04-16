Class {
	#name : #SVGXExample,
	#superclass : #SVGEmbeddedDocumentComponent,
	#instVars : [
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #accessing }
SVGXExample class >> availableForChooser [

	^ self ~= SVGXExample
]

{ #category : #accessing }
SVGXExample >> defaultHeight [
	
	^ 400
]

{ #category : #accessing }
SVGXExample >> defaultWidth [
	
	^ 800
]

{ #category : #rendering }
SVGXExample >> embedSVGIn: canvas [
	
	self perform: self embedSelector with: canvas	
]

{ #category : #accessing }
SVGXExample >> embedSelector [

	embedSelector isNil ifTrue: [ embedSelector := #renderEmbedOn: ].
	^ embedSelector 
]

{ #category : #accessing }
SVGXExample >> embedSelector: aSymbol [

	embedSelector := aSymbol
]

{ #category : #accessing }
SVGXExample >> fontFamily [

	^ 'Verdana, sans-serif'
]

{ #category : #'initialize-release' }
SVGXExample >> initialize [
	
	super initialize.
	embedSelector := #renderEmbedOn:
]

{ #category : #rendering }
SVGXExample >> renderContentOn: canvas [ 

	canvas div 
		class: 'SVGContainer';
		with: [self embedSVGIn: canvas].

]
