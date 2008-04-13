Class {
	#name : #SVGGradientBrush,
	#superclass : #SVGPaintBrush,
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

	gradientTransformList ifNil: [gradientTransformList := SVGTransformList new].
	^gradientTransformList
]

{ #category : #accessing }
SVGGradientBrush >> gradientUnits: aCoordinateSystemString [

	self attributeAt: 'gradientUnits' put: aCoordinateSystemString
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
