Class {
	#name : #SVGXPrototypeApplication,
	#superclass : #SVGXAjaxApplication,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXPrototypeApplication class >> description [

	^ 'Ajax (Prototype library) and SVG'
]

{ #category : #accessing }
SVGXPrototypeApplication class >> path [
	
	^'SVG/ajax-prototype'
]

{ #category : #accessing }
SVGXPrototypeApplication class >> register [

	| app |
	(Smalltalk includesKey: #SVGPatchedSULibrary)
		ifFalse: [ ^ nil ].
	app := super register.
	app addLibrary: SVGPatchedSULibrary.
	^ app
]

{ #category : #initialization }
SVGXPrototypeApplication >> initializeChildren [
	svg := SVGXPrototypeTest new
]

{ #category : #accessing }
SVGXPrototypeApplication >> title [

	^ 'Ajax (Prototype library)'
]
