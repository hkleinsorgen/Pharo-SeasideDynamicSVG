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

{ #category : #'tags-graphics primitives' }
SVGCanvas >> circle [
	
	^self brush: SVGCircleTag new
]

{ #category : #accessing }
SVGCanvas >> context [
	"Answer the rendering context."
	
	^context
]

{ #category : #tags }
SVGCanvas >> description [

	^ self brush: SVGDescriptionTag new
]

{ #category : #tags }
SVGCanvas >> description: aBlock [

	^ self description with: aBlock
]

{ #category : #accessing }
SVGCanvas >> document [
	"Answer the SVG document."
	
	^self context document
]

{ #category : #'tags-graphics primitives' }
SVGCanvas >> ellipse [
	
	^self brush: SVGEllipseTag new
]

{ #category : #tags }
SVGCanvas >> group [
	
	^self brush: SVGGroupTag new
]

{ #category : #tags }
SVGCanvas >> group: aBlock [
	
	^self group with: aBlock
]

{ #category : #'initialize-release' }
SVGCanvas >> initializeWithContext: aRenderingContext callbacks: aCallbackStore [
	
	context := aRenderingContext.
	callbacks := aCallbackStore
]

{ #category : #'tags-graphics primitives' }
SVGCanvas >> line [
	
	^self brush: SVGLineTag new
]

{ #category : #'tags-graphics primitives' }
SVGCanvas >> path [
	^self brush: SVGPathTag new
]

{ #category : #'tags-graphics primitives' }
SVGCanvas >> polygone [
	^self brush: SVGPolygonTag new
]

{ #category : #'tags-graphics primitives' }
SVGCanvas >> polyline [
	^self brush: SVGPolylineTag new
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

{ #category : #'tags-graphics primitives' }
SVGCanvas >> text: anObject [
	"Emit anObject onto the target document.

	If you were looking for <text>, see #textShape. 
	Due to the way String implements renderOn:, this name conflict resolution was necessary"

	self flush.
	self document print: anObject
]

{ #category : #'tags-graphics primitives' }
SVGCanvas >> textShape [

	^self brush: SVGTextTag new
]

{ #category : #'tags-graphics primitives' }
SVGCanvas >> textShape: aBlock [
	^self textShape with: aBlock
]
