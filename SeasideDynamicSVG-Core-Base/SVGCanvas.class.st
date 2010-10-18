Class {
	#name : #SVGCanvas,
	#superclass : #WACanvas,
	#instVars : [
		'tagsNeedNamespace'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #'instance creation' }
SVGCanvas class >> builder [
	^ super builder
			rootClass: SVGRoot;
			documentClass: WAHtmlDocument;
			yourself
]

{ #category : #'instance creation' }
SVGCanvas class >> context: aRenderingContext [
	
	^self basicNew initializeWithContext: aRenderingContext
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
	
	| anchorBrush |
	anchorBrush := self context disableSVGAnchors
		ifTrue: [SVGDisabledAnchorBrush new]
		ifFalse: [SVGAnchorTag new].
	^self brush: anchorBrush
]

{ #category : #'tags-animation' }
SVGCanvas >> animation [
	^ self brush: SVGAnimationTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> blendFilter [
	^self brush: SVGBlendFilterTag new
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

{ #category : #'tags-filter' }
SVGCanvas >> defuseLightingFilter: aBlock [
	^self defuseLightingFilter with: aBlock
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

{ #category : #'tags-filter' }
SVGCanvas >> distantLightFilter [
	^self brush: SVGDistantLightFilterTag new
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

{ #category : #'tags-text' }
SVGCanvas >> font [

	^self brush: SVGFontTag new
]

{ #category : #'tags-text' }
SVGCanvas >> fontFace [

	^self brush: SVGFontFaceTag new
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
SVGCanvas >> glyph [

	^self brush: SVGGlyphTag new
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

{ #category : #'tags-text' }
SVGCanvas >> horizontalKerning [

	^self brush: SVGHorizontalKerningTag new
]

{ #category : #tags }
SVGCanvas >> image [
	
	^self brush: SVGImageTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> imageFilter [
	^self brush: SVGImageFilterTag new
]

{ #category : #'*SeasideDynamicSVG-Core-private' }
SVGCanvas >> isSVGCanvas [

	^ true
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

{ #category : #'tags-text' }
SVGCanvas >> missingGlyph [

	^self brush: SVGMissingGlyphTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> morphologyFilter [
	^self brush: SVGMorphologyFilterTag new
]

{ #category : #'tags-animation' }
SVGCanvas >> motion [
	^ self brush: SVGAnimationMotionTag new
]

{ #category : #'tags-animation' }
SVGCanvas >> motionPath [

	^ self brush: SVGMotionPathTag new
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

{ #category : #'tags-filter' }
SVGCanvas >> pointLightFilter [
	^self brush: SVGPointLightFilterTag new
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

{ #category : #tags }
SVGCanvas >> script [
	"Defines a script."

	^ self brush: WAScriptTag new
]

{ #category : #'tags-animation' }
SVGCanvas >> setAnimationAttribute [

	^ self brush: SVGSetAnimationAttributeTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> specularLightingFilter [
	^self brush: SVGSpecularLightingFilterTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> specularLightingFilter: aBlock [
	^self specularLightingFilter with: aBlock
]

{ #category : #'tags-filter' }
SVGCanvas >> spotLightFilter [
	^self brush: SVGSpotLightFilterTag new
]

{ #category : #accessing }
SVGCanvas >> svg [
	" Already SVG "
	
	| brush svg |
	brush := SVGRootTag new.
	self brush: brush.
	brush svgCanvas: self.
	^ brush
]

{ #category : #accessing }
SVGCanvas >> svgTagsNeedNamespace [
	^ tagsNeedNamespace ifNil: [ true ]
]

{ #category : #accessing }
SVGCanvas >> svgTagsNeedNamespace: aBoolean [ 

	tagsNeedNamespace := aBoolean.

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

{ #category : #'tags-animation' }
SVGCanvas >> transformAnimation [
	^ self brush: SVGAnimationTransformTag new
]

{ #category : #'tags-filter' }
SVGCanvas >> turbulenceFilter [
	^self brush: SVGTurbulenceFilterTag new
]

{ #category : #tags }
SVGCanvas >> use [
	
	^self brush: SVGUseTag new
]

{ #category : #'tags-text' }
SVGCanvas >> verticalKerning [

	^self brush: SVGVerticalKerningTag new
]

{ #category : #private }
SVGCanvas >> visitWith: aBlock [

	| visitor oldVisitor |
	self initialize.
	oldVisitor := context visitor.
	visitor := SVGRenderVisitor context: context.
	^ [ 
		context visitor: visitor.
		aBlock value: self
	] ensure: [
		context visitor: oldVisitor
	]
]
