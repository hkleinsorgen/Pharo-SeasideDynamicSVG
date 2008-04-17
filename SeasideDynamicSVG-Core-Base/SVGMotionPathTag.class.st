Class {
	#name : #SVGMotionPathTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Animation'
}

{ #category : #accessing }
SVGMotionPathTag >> pathElement: aPathReference [

	self attributeAt: 'xlink:href' put: aPathReference toSVGIDReference
]

{ #category : #private }
SVGMotionPathTag >> tag [

	^ 'mpath'
]
