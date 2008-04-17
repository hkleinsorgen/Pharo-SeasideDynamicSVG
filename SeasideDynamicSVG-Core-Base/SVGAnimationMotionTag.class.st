Class {
	#name : #SVGAnimationMotionTag,
	#superclass : #SVGAnimationBrush,
	#instVars : [
		'path'
	],
	#category : #'SeasideDynamicSVG-Core-Animation'
}

{ #category : #accessing }
SVGAnimationMotionTag >> addKeyPoint: aValue [

	self attributes at: 'keyPoints' append: aValue toSVGString separator: ';'
]

{ #category : #accessing }
SVGAnimationMotionTag >> keyPoints: aListString [

	self attributeAt: 'keyPoints' put: aListString
]

{ #category : #public }
SVGAnimationMotionTag >> openTag [

	| d |
	(path notNil and: [ (self attributes includesKey: 'd') not ])
		ifTrue: [
			d := path pathString.
			d notNil ifTrue: [ self attributeAt: 'd' put: d ].
		].
	super openTag.
]

{ #category : #accessing }
SVGAnimationMotionTag >> path [

	path isNil ifTrue: [ path := SVGPath new ].
	^ path
]

{ #category : #accessing }
SVGAnimationMotionTag >> path: aBlockOrString [

	^ aBlockOrString isString
		ifTrue: [ self attributeAt: 'd' put: aBlockOrString ] 
		ifFalse: [ aBlockOrString value: self path ].
]

{ #category : #accessing }
SVGAnimationMotionTag >> rotate: anAngleOrString [

	self attributeAt: 'rotate' put: anAngleOrString
]

{ #category : #convenience }
SVGAnimationMotionTag >> rotateAuto [

	self rotate: 'auto'
]

{ #category : #convenience }
SVGAnimationMotionTag >> rotateAutoReverse [

	self rotate: 'auto-reverse'
]

{ #category : #private }
SVGAnimationMotionTag >> tag [

	^ 'animateMotion'
]
