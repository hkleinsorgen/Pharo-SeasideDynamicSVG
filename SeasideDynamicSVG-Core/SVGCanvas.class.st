Class {
	#name : #SVGCanvas,
	#superclass : #WACanvas,
	#instVars : [
		'context',
		'callbacks'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #'instance creation' }
SVGCanvas class >> context: aRenderingContext callbacks: aCallbackStore [
	
	^self basicNew initializeWithContext: aRenderingContext callbacks:
			aCallbackStore
]

{ #category : #tags }
SVGCanvas >> anchor [
	
	^self brush: SVGAnchorTag new
]

{ #category : #accessing }
SVGCanvas >> callbacks [
	"Answer the callback registry."
	
	^callbacks
]

{ #category : #tags }
SVGCanvas >> circle [
	
	^self brush: SVGCircleTag new
]

{ #category : #accessing }
SVGCanvas >> context [
	"Answer the rendering context."
	
	^context
]

{ #category : #accessing }
SVGCanvas >> document [
	"Answer the SVG document."
	
	^self context document
]

{ #category : #'initialize-release' }
SVGCanvas >> initializeWithContext: aRenderingContext callbacks: aCallbackStore [
	
	context := aRenderingContext.
	callbacks := aCallbackStore
]

{ #category : #tags }
SVGCanvas >> path [
	^self brush: SVGPathTag new
]

{ #category : #'initialize-release' }
SVGCanvas >> rectangle [
	^ self brush: SVGRectangleTag new
]

{ #category : #public }
SVGCanvas >> render: anObject [
	self flush.
	anObject drawSVGOn: self
]

{ #category : #tags }
SVGCanvas >> svg [
	^self brush: SVGRootTag new
]

{ #category : #tags }
SVGCanvas >> svg: aBlock [
	^self svg with: aBlock
]
