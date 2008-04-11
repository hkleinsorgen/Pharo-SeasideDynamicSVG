Class {
	#name : #SVGExampleDocument,
	#superclass : #SVGEmbeddedDocumentComponent,
	#instVars : [
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #rendering }
SVGExampleDocument >> embedSVGIn: canvas [
	
	self perform: self embedSelector with: canvas	
]

{ #category : #accessing }
SVGExampleDocument >> embedSelector [

	embedSelector isNil ifTrue: [ embedSelector := #renderEmbedOn: ].
	^ embedSelector 
]

{ #category : #accessing }
SVGExampleDocument >> embedSelector: aSymbol [

	embedSelector := aSymbol
]

{ #category : #'initialize-release' }
SVGExampleDocument >> initialize [
	
	super initialize.
	embedSelector := #renderEmbedOn:
]

{ #category : #rendering }
SVGExampleDocument >> renderContentOn: canvas [ 

	canvas div 
		style: 'padding: 1em';
		with: [self embedSVGIn: canvas].

]
