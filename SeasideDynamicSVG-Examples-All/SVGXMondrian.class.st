Class {
	#name : #SVGXMondrian,
	#superclass : #SVGXExample,
	#instVars : [
		'convertCoordinates'
	],
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #accessing }
SVGXMondrian class >> availableForChooser [

	^ self ~= SVGXMondrian and: [  Smalltalk includesKey: #MORenderer ].
]

{ #category : #accessing }
SVGXMondrian >> convertCoordinates [

	^ convertCoordinates ifNil: [ true ]
]

{ #category : #accessing }
SVGXMondrian >> convertCoordinates: aBoolean [

	convertCoordinates := aBoolean
]

{ #category : #rendering }
SVGXMondrian >> renderContentOn: canvas [ 

	| formId |
	
	canvas form 
		id: (formId := canvas nextId); 
		with: [ 
			canvas checkbox
				value: self convertCoordinates;
				submitFormNamed: formId;
				callback: [ : b | self convertCoordinates: b];
				with: 'Adjust coordinates'.
		].
	canvas paragraph.
	super renderContentOn: canvas .
]
