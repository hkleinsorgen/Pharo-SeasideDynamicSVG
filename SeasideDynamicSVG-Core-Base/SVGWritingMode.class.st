Class {
	#name : #SVGWritingMode,
	#superclass : #ProtoObject,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #accessing }
SVGWritingMode class >> leftToRight [

	^ 'lr'
]

{ #category : #accessing }
SVGWritingMode class >> leftToRightTopToBottom [

	^ 'lr-tb'
]

{ #category : #accessing }
SVGWritingMode class >> rightToLeft [

	^ 'rl'
]

{ #category : #accessing }
SVGWritingMode class >> rightToLeftTopToBottom [

	^ 'rl-tb'
]

{ #category : #accessing }
SVGWritingMode class >> topToBottom [

	^ 'tb'
]

{ #category : #accessing }
SVGWritingMode class >> topToBottomRightToLeft [

	^ 'tb-rl'
]
