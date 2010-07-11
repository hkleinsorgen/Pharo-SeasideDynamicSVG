Class {
	#name : #SVGXExample,
	#superclass : #SVGEmbeddedDocumentComponent,
	#instVars : [
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples'
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

	embedSelector isNil ifTrue: [ embedSelector := #renderInlinedOn: ].
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

{ #category : #rendering }
SVGXExample >> renderContentOn: canvas [ 

	canvas div 
		class: 'SVGContainer';
		with: [self embedSVGIn: canvas].

]
