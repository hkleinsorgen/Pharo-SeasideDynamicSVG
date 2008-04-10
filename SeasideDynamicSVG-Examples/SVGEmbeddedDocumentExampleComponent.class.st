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
	
	self perform: embedSelector with: canvas	
]

{ #category : #accessing }
SVGEmbeddedDocumentExampleComponent >> embedSelector [

	^ embedSelector
]

{ #category : #accessing }
SVGEmbeddedDocumentExampleComponent >> embedSelector: aSymbol [

	embedSelector := aSymbol
]
