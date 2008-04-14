Class {
	#name : #SVGRadialGradientTag,
	#superclass : #SVGGradientBrush,
	#category : #'SeasideDynamicSVG-Core-Paint'
}

{ #category : #'convenience-coordinates' }
SVGRadialGradientTag >> center: aPoint [

	self centerX: aPoint x.
	self centerY: aPoint y.
]

{ #category : #accessing }
SVGRadialGradientTag >> centerX: aCoordinate [

	self attributeAt: 'cx' put: aCoordinate
]

{ #category : #accessing }
SVGRadialGradientTag >> centerY: aCoordinate [

	self attributeAt: 'cy' put: aCoordinate
]

{ #category : #'convenience-coordinates' }
SVGRadialGradientTag >> focal: aPoint [

	self focalX: aPoint x.
	self focalY: aPoint y.
]

{ #category : #accessing }
SVGRadialGradientTag >> focalX: aCoordinate [

	self attributeAt: 'fx' put: aCoordinate
]

{ #category : #accessing }
SVGRadialGradientTag >> focalY: aCoordinate [

	self attributeAt: 'fy' put: aCoordinate
]

{ #category : #accessing }
SVGRadialGradientTag >> radius: aLength [

	self attributeAt: 'r' put: aLength
]

{ #category : #accessing }
SVGRadialGradientTag >> tag [

	^ 'radialGradient'
]
