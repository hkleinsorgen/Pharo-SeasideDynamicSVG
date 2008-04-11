Class {
	#name : #SVGAwareRenderingContext,
	#superclass : #WARenderingContext,
	#instVars : [
		'containsInlinedSVG',
		'registeredHandlers'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGAwareRenderingContext >> containsInlinedSVG [

	^ containsInlinedSVG
]

{ #category : #accessing }
SVGAwareRenderingContext >> containsInlinedSVG: aBoolean [

	containsInlinedSVG := aBoolean
]

{ #category : #'initialize-release' }
SVGAwareRenderingContext >> initialize [

	super initialize.
	containsInlinedSVG := false.
	registeredHandlers := Set new.
]

{ #category : #accessing }
SVGAwareRenderingContext >> registerSVGDocumentHandler: aSVGDocmentHandler [ 
	registeredHandlers add: aSVGDocmentHandler
]

{ #category : #accessing }
SVGAwareRenderingContext >> registeredHandlers [
	
		^ registeredHandlers 
]
