Class {
	#name : #SVGExample,
	#superclass : #WAComponent,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #'class initialization' }
SVGExample class >> initialize [
	
	self register
]

{ #category : #'class initialization' }
SVGExample class >> path [

	^ nil
]

{ #category : #'class initialization' }
SVGExample class >> register [
	
	| app |
	self path notNil
		ifTrue: [
			app := self registerAsApplication: self path.
			app preferenceAt: #renderContinuationClass put: SVGHybridRenderContinuation
		].
]

{ #category : #'class initialization' }
SVGExample class >> registerAll [
	"self registerAll"	

	self allSubclasses do: [ : sc | sc register ]
]
