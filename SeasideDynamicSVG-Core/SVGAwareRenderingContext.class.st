Class {
	#name : #SVGAwareRenderingContext,
	#superclass : #WARenderingContext,
	#instVars : [
		'containsInlinedSVG'
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
	containsInlinedSVG := false
]
