Class {
	#name : #SVGLinearGradientTag,
	#superclass : #SVGGradientBrush,
	#category : #'SeasideDynamicSVG-Core-Paint'
}

{ #category : #'convenience-coordinates' }
SVGLinearGradientTag >> start: aPoint [

	self startX: aPoint x.
	self startY: aPoint y.

]

{ #category : #accessing }
SVGLinearGradientTag >> startX: aCoordinate [

	self attributeAt: 'x1' put: aCoordinate
]

{ #category : #accessing }
SVGLinearGradientTag >> startY: aCoordinate [

	self attributeAt: 'y1' put: aCoordinate
]

{ #category : #'convenience-coordinates' }
SVGLinearGradientTag >> stop: aPoint [

	self stopX: aPoint x.
	self stopY: aPoint y.

]

{ #category : #accessing }
SVGLinearGradientTag >> stopX: aCoordinate [

	self attributeAt: 'x2' put: aCoordinate
]

{ #category : #accessing }
SVGLinearGradientTag >> stopY: aCoordinate [

	self attributeAt: 'y2' put: aCoordinate
]

{ #category : #accessing }
SVGLinearGradientTag >> tag [

	^ 'linearGradient'
]
