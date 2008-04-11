Class {
	#name : #SVGNotifyingLRUCache,
	#superclass : #WALRUCache,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #removing }
SVGNotifyingLRUCache >> remove: aContinuation [

	super remove: aContinuation.	
	aContinuation svgExpired.

]
