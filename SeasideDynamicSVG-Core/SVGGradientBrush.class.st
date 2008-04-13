Class {
	#name : #SVGGradientBrush,
	#superclass : #SVGTag,
	#instVars : [
		'gradientTransformList'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGGradientBrush >> gradientTransform: aBlock [

	aBlock value: self gradientTransformList
]

{ #category : #accessing }
SVGGradientBrush >> gradientTransformList [

	gradientTransformList ifNil: [transformList := gradientTransformList new].
	^gradientTransformList
]

{ #category : #accessing }
SVGGradientBrush >> gradientUnits: aString [

	self attributeAt: 'gradientUnits' put: aString
]

{ #category : #'convenience-referencing' }
SVGGradientBrush >> needsId [

	^ true
]

{ #category : #'convenience-gradient units' }
SVGGradientBrush >> objectBoundingBox [

	self gradientUnits: 'objectBoundingBox'
]

{ #category : #'convenience-spread method' }
SVGGradientBrush >> pad [ 

	self spreadMethod: 'pad'
]

{ #category : #'convenience-spread method' }
SVGGradientBrush >> reflect [ 

	self spreadMethod: 'reflect'
]

{ #category : #'convenience-spread method' }
SVGGradientBrush >> repeat [ 

	self spreadMethod: 'repeat'
]

{ #category : #accessing }
SVGGradientBrush >> spreadMethod: aString [

	self attributeAt: 'spreadMethod' put: aString
]

{ #category : #'convenience-coordinates' }
SVGGradientBrush >> start: startPoint [

	self x1: startPoint x.
	self y1: startPoint y.

]

{ #category : #'convenience-coordinates' }
SVGGradientBrush >> stop: stopPoint [

	self x2: stopPoint x.
	self y2: stopPoint y.
]

{ #category : #'convenience-referencing' }
SVGGradientBrush >> toSVGPaint [
	^ self generateURL
]

{ #category : #accessing }
SVGGradientBrush >> url: anURIOrString [
	" A URI reference to a different 'linearGradient' or 'radialGradient' element within the current SVG document fragment "

	self attributes at: 'xlink:href' put: anURIOrString
]

{ #category : #'convenience-gradient units' }
SVGGradientBrush >> userSpaceOnUse [

	self gradientUnits: 'userSpaceOnUse'
]

{ #category : #accessing }
SVGGradientBrush >> with: aBlock [ 

	gradientTransformList isNil
		ifFalse: [
			self attributes 
				at: 'gradientTransform'
				put: transformList toSVGString
		].
	super with: aBlock
]

{ #category : #accessing }
SVGGradientBrush >> x1: aCoordinate [

	self attributeAt: 'x1' put: aCoordinate
]

{ #category : #accessing }
SVGGradientBrush >> x2: aCoordinate [

	self attributeAt: 'x2' put: aCoordinate
]

{ #category : #accessing }
SVGGradientBrush >> y1: aCoordinate [

	self attributeAt: 'y1' put: aCoordinate
]

{ #category : #accessing }
SVGGradientBrush >> y2: aCoordinate [

	self attributeAt: 'y2' put: aCoordinate
]
