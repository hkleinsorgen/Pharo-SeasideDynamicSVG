Class {
	#name : #SVGAwareRenderingContext,
	#superclass : #WARenderContext,
	#instVars : [
		'containsInlinedSVG',
		'registeredHandlers',
		'userAgentAdaptor',
		'disableAnchors'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGAwareRenderingContext >> containsInlinedSVG [

	^ containsInlinedSVG
]

{ #category : #accessing }
SVGAwareRenderingContext >> containsInlinedSVG: aBoolean [

	containsInlinedSVG := aBoolean
]

{ #category : #accessing }
SVGAwareRenderingContext >> disableAnchors [
	
	^disableAnchors
]

{ #category : #accessing }
SVGAwareRenderingContext >> disableAnchors: aDisableAnchors [
	
	disableAnchors := aDisableAnchors
]

{ #category : #'initialize-release' }
SVGAwareRenderingContext >> initialize [
	
	super initialize.
	containsInlinedSVG := false.
	registeredHandlers := Set new.
	disableAnchors := false
]

{ #category : #accessing }
SVGAwareRenderingContext >> registerSVGDocumentHandler: aSVGDocmentHandler [ 
	registeredHandlers add: aSVGDocmentHandler
]

{ #category : #accessing }
SVGAwareRenderingContext >> registeredHandlers [
	
		^ registeredHandlers 
]

{ #category : #accessing }
SVGAwareRenderingContext >> userAgentAdaptor [

	^ userAgentAdaptor
]

{ #category : #accessing }
SVGAwareRenderingContext >> userAgentAdaptor: aUserAgentAdaptor [

	userAgentAdaptor := aUserAgentAdaptor
]
