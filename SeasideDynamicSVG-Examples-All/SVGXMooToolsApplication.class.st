Class {
	#name : #SVGXMooToolsApplication,
	#superclass : #SVGXAjaxApplication,
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #accessing }
SVGXMooToolsApplication class >> description [

	^ 'Ajax (MooTools library) and SVG'
]

{ #category : #accessing }
SVGXMooToolsApplication class >> path [
	
	^'SVG/ajax-mootols'
]

{ #category : #accessing }
SVGXMooToolsApplication class >> register [

	| app |
	(Smalltalk includesKey: #MOOMootoolsLibrary)
		ifFalse: [ ^ nil ].
	app := super register.
	app addLibrary: MOOMootoolsLibrary.
	^ app
]

{ #category : #initialization }
SVGXMooToolsApplication >> initializeChildren [
	svg := SVGXMooToolsTest new
]

{ #category : #accessing }
SVGXMooToolsApplication >> title [

	^ 'Ajax (Mootools library)'
]
