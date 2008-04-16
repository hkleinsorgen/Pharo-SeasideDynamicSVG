Class {
	#name : #SVGPaintBrush,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Paint'
}

{ #category : #private }
SVGPaintBrush >> needsId [

	^ true
]

{ #category : #accessing }
SVGPaintBrush >> overflow: aString [

	self attributeAt: 'overflow' put: aString
]

{ #category : #accessing }
SVGPaintBrush >> toSVGPaint [
	^ self generateURL
]

{ #category : #accessing }
SVGPaintBrush >> url: aPaintReference [ 
	" A URI reference to a different 'linearGradient' or 'radialGradient' element within the current SVG document fragment "
	self attributes 
		at: 'xlink:href'
		put: aPaintReference toSVGURIReference
]
