Class {
	#name : #SVGGradientStopTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Paint'
}

{ #category : #accessing }
SVGGradientStopTag >> color: aColorOrString [

	self attributeAt: 'stop-color' put: aColorOrString
]

{ #category : #accessing }
SVGGradientStopTag >> offset: numberOrPercentage [

	self attributeAt: 'offset' put: numberOrPercentage
]

{ #category : #accessing }
SVGGradientStopTag >> opacity: aNumber [

	self attributeAt: 'stop-opacity' put: aNumber
]

{ #category : #accessing }
SVGGradientStopTag >> tag [

	^ 'stop'
]
