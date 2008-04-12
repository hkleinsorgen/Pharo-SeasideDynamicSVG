Class {
	#name : #SVGXExample,
	#superclass : #SVGEmbeddedDocumentComponent,
	#instVars : [
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXExample >> defaultHeight [
	
	^ 400
]

{ #category : #accessing }
SVGXExample >> defaultWidth [
	
	^ 500
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

{ #category : #'initialize-release' }
SVGXExample >> initialize [
	
	super initialize.
	embedSelector := #renderEmbedOn:
]

{ #category : #rendering }
SVGXExample >> renderContentOn: canvas [ 

	canvas div 
		style: 'padding: 1em';
		with: [self embedSVGIn: canvas].

]
