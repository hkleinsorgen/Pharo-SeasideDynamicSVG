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

{ #category : #'tags-filter' }
SVGCanvas >> blendFilter [
	^self brush: SVGBlendFilterTag new
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

{ #category : #tags }
SVGCanvas >> clippingPath [

	^ self brush: SVGClippingPathTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> colorMatrixFilter [
	^self brush: SVGColorMatrixFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> componentTransferFilter [
	^self brush: SVGComponentTransferFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> componentTransferFilter: aBlock [

	^ self componentTransferFilter with: aBlock
]

{ #category : #'tags-filter' }
SVGCanvas >> compositeFilter [
	^self brush: SVGCompositeFilterTag new
]

{ #category : #accessing }
SVGCanvas >> context [
	"Answer the rendering context."
	
	^context
]

{ #category : #'tags-filter' }
SVGCanvas >> convolveMatrixFilter [
	^self brush: SVGConvolveMatrixFilterTag new
]

{ #category : #tags }
SVGCanvas >> definitions [
	^ self brush: SVGDefinitionsTag new
]

{ #category : #tags }
SVGCanvas >> definitions: aBlock [ 
	^ self definitions with: aBlock
]

{ #category : #'tags-filter' }
SVGCanvas >> defuseLightingFilter [
	^self brush: SVGDefuseLightingFilterTag new
]

{ #category : #tags }
SVGCanvas >> description [

	^ self brush: SVGDescriptionTag new
]

{ #category : #tags }
SVGCanvas >> description: aBlock [

	^ self description with: aBlock
]

{ #category : #'tags-filter' }
SVGCanvas >> displacementMapFilter [
	^self brush: SVGDisplacementMapFilterTag new
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
SVGCanvas >> floodFilter [
	^self brush: SVGFloodFilterTag new
]

{ #category : #tags }
SVGCanvas >> foreignTag [

	^ self brush: SVGForeignObjectTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> funcAlphaFilter [
	^self brush: SVGFuncAlphaFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> funcBlueFilter [
	^self brush: SVGFuncBlueFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> funcGreenFilter [
	^self brush: SVGFuncGreenFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> funcRedFilter [
	^self brush: SVGFuncRedFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> gaussianBlurFilter [
	^self brush: SVGGaussianBlurFilterTag new
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

{ #category : #'tags-filter' }
SVGCanvas >> imageFilter [
	^self brush: SVGImageFilterTag new
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

{ #category : #tags }
SVGCanvas >> mark [

	^ self brush: SVGMaskTag new
]

{ #category : #'tags-shapes' }
SVGCanvas >> marker [

	^ self brush: SVGMarkerTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> mergeFilter [
	^self brush: SVGMergeFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> mergeFilter: aBlock [

	^ self mergeFilter with: aBlock
]

{ #category : #'tags-filter' }
SVGCanvas >> mergeNode [
	^self brush: SVGMergeNodeTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> morphologyFilter [
	^self brush: SVGMorphologyFilterTag new
]

{ #category : #accessing }
SVGCanvas >> nextId [
	^ 'id' , context advanceKey
]

{ #category : #'tags-filter' }
SVGCanvas >> offsetFilter [
	^self brush: SVGOffsetFilterTag new
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
SVGCanvas >> polyline [
	^self brush: SVGPolylineTag new
]

{ #category : #'tags-paint' }
SVGCanvas >> radialGradient [

	^ self brush: SVGRadialGradientTag new
]

{ #category : #'tags-shapes' }
SVGCanvas >> rectangle [
	^ self brush: SVGRectangleTag new
]

{ #category : #public }
SVGCanvas >> render: anObject [
	self flush.
	anObject drawSVGOn: self
]

{ #category : #tags }
SVGCanvas >> script [
	"Defines a script."

	^ self brush: WAScriptTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> specularLightingFilter [
	^self brush: SVGSpecularLightingFilterTag new
]

{ #category : #accessing }
SVGCanvas >> svgTagsNeedNamespace [
	^ tagsNeedNamespace
]

{ #category : #accessing }
SVGCanvas >> svgTagsNeedNamespace: aBoolean [ 
	tagsNeedNamespace := aBoolean
]

{ #category : #tags }
SVGCanvas >> symbol [

	^ self brush: SVGSymbolTag new
]

{ #category : #tags }
SVGCanvas >> symbol: aBlock [

	^ self symbol with: aBlock
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

{ #category : #'tags-filter' }
SVGCanvas >> tileFilter [
	^self brush: SVGTileFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> turbulenceFilter [
	^self brush: SVGTurbulenceFilterTag new
]

{ #category : #tags }
SVGCanvas >> use [
	
	^self brush: SVGUseTag new
]
