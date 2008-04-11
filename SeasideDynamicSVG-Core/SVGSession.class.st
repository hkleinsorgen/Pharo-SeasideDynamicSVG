Class {
	#name : #SVGSession,
	#superclass : #WASession,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'as yet unclassified' }
SVGSession >> initialize [
	super initialize.
	continuations := SVGNotifyingLRUCache new.

]
