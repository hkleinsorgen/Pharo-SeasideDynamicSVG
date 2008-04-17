Class {
	#name : #SVGAnimationTransformTag,
	#superclass : #SVGAnimationBrush,
	#category : #'SeasideDynamicSVG-Core-Animation'
}

{ #category : #private }
SVGAnimationTransformTag >> tag [

	^ 'animateTransform'
]

{ #category : #accessing }
SVGAnimationTransformTag >> type: aString [

	self attributeAt: 'type' put: aString
]
