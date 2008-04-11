Class {
	#name : #SVGEmbeddedDocumentExampleComponent,
	#superclass : #SVGEmbeddedDocumentComponent,
	#instVars : [
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #rendering }
SVGEmbeddedDocumentExampleComponent >> embedSVGIn: canvas [
	
	self perform: self embedSelector with: canvas	
]

{ #category : #accessing }
SVGEmbeddedDocumentExampleComponent >> embedSelector [

	embedSelector isNil ifTrue: [ embedSelector := #renderEmbedOn: ].
	^ embedSelector 
]

{ #category : #accessing }
SVGEmbeddedDocumentExampleComponent >> embedSelector: aSymbol [

	embedSelector := aSymbol
]

{ #category : #'initialize-release' }
SVGEmbeddedDocumentExampleComponent >> initialize [
	
	super initialize.
	embedSelector := #renderEmbedOn:
]
