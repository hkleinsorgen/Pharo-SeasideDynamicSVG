Class {
	#name : #SVGCanvas,
	#superclass : #WACanvas,
	#instVars : [
		'context',
		'callbacks',
		'tagsNeedNamespace'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #'instance creation' }
SVGCanvas class >> context: aRenderingContext callbacks: aCallbackStore [
	
	^self basicNew initializeWithContext: aRenderingContext callbacks:
			aCallbackStore
]

{ #category : #'tags-text' }
SVGCanvas >> alternativeGlyph [
	^ self brush: SVGAlternativeGlyphTag new
]

{ #category : #'tags-text' }
SVGCanvas >> alternativeGlyphDefinition [

	^ self brush: (WAGenericTag tag: 'altGlyphDef')
]

{ #category : #'tags-text' }
SVGCanvas >> alternativeGlyphDefinition: aBlock [

	^ self alternativeGlyphDefinition with: aBlock
]

{ #category : #'tags-text' }
SVGCanvas >> alternativeGlyphItem [

	^ self brush: (WAGenericTag tag: 'altGlyphItem')
]

{ #category : #'tags-text' }
SVGCanvas >> alternativeGlyphItem: aBlock [

	^ self alternativeGlyphItem with: aBlock
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

{ #category : #'tags-shapes' }
SVGCanvas >> circle [
	
	^self brush: SVGCircleTag new
]

{ #category : #accessing }
SVGCanvas >> context [
	"Answer the rendering context."
	
	^context
]

{ #category : #tags }
SVGCanvas >> definitions [
	^ self brush: SVGDefinitionsTag new
]

{ #category : #tags }
SVGCanvas >> definitions: aBlock [ 
	^ self definitions with: aBlock
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

{ #category : #'tags-shapes' }
SVGCanvas >> ellipse [
	
	^self brush: SVGEllipseTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> filter [
	
	^self brush: SVGFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> filter: aBlock [
	
	^self filter with: aBlock
]

{ #category : #'tags-filter' }
SVGCanvas >> gaussianBlurFilter [
	^self brush: SVGGaussianBlurTag new
]

{ #category : #'tags-text' }
SVGCanvas >> glyphReference [

	^self brush: SVGGlyphReferenceTag new
]

{ #category : #'tags-paint' }
SVGCanvas >> gradientStop [
	^ self brush: SVGGradientStopTag new
]

{ #category : #'tags-paint' }
SVGCanvas >> gradientStopAt: stopOffset color: aColorOrString [

	^ self gradientStop 
		offset: stopOffset; 
		color: aColorOrString; 
		yourself
]

{ #category : #tags }
SVGCanvas >> group [
	
	^self brush: SVGGroupTag new
]

{ #category : #tags }
SVGCanvas >> group: aBlock [
	
	^self group with: aBlock
]

{ #category : #tags }
SVGCanvas >> image [
	
	^self brush: SVGImageTag new
]

{ #category : #'initialize-release' }
SVGCanvas >> initializeWithContext: aRenderingContext callbacks: aCallbackStore [
	
	context := aRenderingContext.
	callbacks := aCallbackStore.
	tagsNeedNamespace := true.
]

{ #category : #'tags-shapes' }
SVGCanvas >> line [
	
	^self brush: SVGLineTag new
]

{ #category : #'tags-paint' }
SVGCanvas >> linearGradient [

	^ self brush: SVGLinearGradientTag new
]

{ #category : #'tags-shapes' }
SVGCanvas >> marker [

	^ self brush: SVGMarkerTag new
]

{ #category : #accessing }
SVGCanvas >> nextId [
	^ 'id' , context advanceKey
]

{ #category : #'tags-shapes' }
SVGCanvas >> path [
	^self brush: SVGPathTag new
]

{ #category : #'tags-paint' }
SVGCanvas >> pattern [

	^ self brush: SVGPatternTag new
]

{ #category : #'tags-shapes' }
SVGCanvas >> polygon [
	^self brush: SVGPolygonTag new
]

{ #category : #'tags-shapes' }
SVGCanvas >> polygone [
	^self brush: SVGPolygonTag new
]

{ #category : #'tags-shapes' }
SVGCanvas >> polyline [
	^self brush: SVGPolylineTag new
]

{ #category : #'tags-paint' }
SVGCanvas >> radialGradient [

	^ self brush: SVGRadialGradientTag new
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

{ #category : #accessing }
SVGCanvas >> svgTagsNeedNamespace [
	^ tagsNeedNamespace
]

{ #category : #accessing }
SVGCanvas >> svgTagsNeedNamespace: aBoolean [ 
	tagsNeedNamespace := aBoolean
]

{ #category : #public }
SVGCanvas >> text: anObject [
	"Emit anObject onto the target document.

	If you were looking for <text>, see #textShape. 
	Due to the way String implements renderOn:, this name conflict resolution was necessary"

	self flush.
	self document print: anObject
]

{ #category : #'tags-text' }
SVGCanvas >> textPath [

	^self brush: SVGTextPathTag new
]

{ #category : #'tags-text' }
SVGCanvas >> textReference [

	^self brush: SVGTextReferenceTag new
]

{ #category : #'tags-text' }
SVGCanvas >> textShape [

	^self brush: SVGTextTag new
]

{ #category : #'tags-text' }
SVGCanvas >> textShape: aBlock [
	^self textShape with: aBlock
]

{ #category : #'tags-text' }
SVGCanvas >> textSpan [

	^self brush: SVGTextSpanTag new
]

{ #category : #'tags-text' }
SVGCanvas >> textSpan: aBlock [
	^self textSpan with: aBlock
]

{ #category : #tags }
SVGCanvas >> use [
	
	^self brush: SVGUseTag new
]
