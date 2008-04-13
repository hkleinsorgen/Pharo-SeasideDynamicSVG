Class {
	#name : #SVGGradientStop,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGGradientStop >> color: aColorOrString [

	self attributeAt: 'stop-color' put: aColorOrString
]

{ #category : #accessing }
SVGGradientStop >> offset: numberOrPercentage [

	self attributeAt: 'offset' put: numberOrPercentage
]

{ #category : #accessing }
SVGGradientStop >> opacity: aNumber [

	self attributeAt: 'stop-opacity' put: aNumber
]

{ #category : #accessing }
SVGGradientStop >> tag [

	^ 'stop'
]
