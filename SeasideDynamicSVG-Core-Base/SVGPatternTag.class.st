Class {
	#name : #SVGPatternTag,
	#superclass : #SVGPaintBrush,
	#instVars : [
		'patternTransformList'
	],
	#category : #'SeasideDynamicSVG-Core-Paint'
}

{ #category : #accessing }
SVGPatternTag >> clip: aShape [

	self attributeAt: 'clip' put: aShape
]

{ #category : #accessing }
SVGPatternTag >> contentUnits: aCoordinateSystemString [

	self attributeAt: 'patternContentUnits' put: aCoordinateSystemString
]

{ #category : #'convencience-reference rectangle' }
SVGPatternTag >> extent: aPoint [

	self width: aPoint x.
	self height: aPoint y.
]

{ #category : #accessing }
SVGPatternTag >> height: aLength [

	self attributeAt: 'height' put: aLength
]

{ #category : #accessing }
SVGPatternTag >> patternTransform: aBlock [

	^ aBlock value: self patternTransformList
]

{ #category : #accessing }
SVGPatternTag >> patternTransformList [

	patternTransformList ifNil: [patternTransformList := SVGTransformList new].
	^patternTransformList
]

{ #category : #accessing }
SVGPatternTag >> patternUnits: aCoordinateSystemString [ 
	self 
		attributeAt: 'patternUnits'
		put: aCoordinateSystemString
]

{ #category : #accessing }
SVGPatternTag >> preserveAspectRatio: aString [ 
	self 
		attributeAt: 'preserveAspectRation'
		put: aString
]

{ #category : #'convencience-reference rectangle' }
SVGPatternTag >> referenceOrigin: aPoint [

	self x: aPoint x.
	self y: aPoint y.
]

{ #category : #'convencience-reference rectangle' }
SVGPatternTag >> referenceRectangle: aRectangle [

	self referenceOrigin: aRectangle origin.
	self extent: aRectangle extent.
]

{ #category : #accessing }
SVGPatternTag >> tag [

	^ 'pattern'
]

{ #category : #accessing }
SVGPatternTag >> viewBox: aRectangleOrString [ 

	self 
		attributeAt: 'viewBox'
		put: aRectangleOrString toSVGViewBoxString
]

{ #category : #accessing }
SVGPatternTag >> width: aLength [

	self attributeAt: 'width' put: aLength
]

{ #category : #public }
SVGPatternTag >> with: aBlock [ 

	patternTransformList isNil
		ifFalse: [
			self attributeAt: 'patternTransform' put: patternTransformList.
		].
	super with: aBlock
]

{ #category : #accessing }
SVGPatternTag >> x: aCoordinate [

	self attributeAt: 'x' put: aCoordinate
]

{ #category : #accessing }
SVGPatternTag >> y: aCoordinate [

	self attributeAt: 'y' put: aCoordinate
]
