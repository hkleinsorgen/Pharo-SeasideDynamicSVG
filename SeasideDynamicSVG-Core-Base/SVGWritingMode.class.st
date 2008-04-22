Class {
	#name : #SVGWritingMode,
	#superclass : #SVGEnumeration,
	#category : #'SeasideDynamicSVG-Core-Text'
}

{ #category : #'as yet unclassified' }
SVGWritingMode class >> leftToRight [

	^ 'lr'
]

{ #category : #'as yet unclassified' }
SVGWritingMode class >> leftToRightTopToBottom [

	^ 'lr-tb'
]

{ #category : #'as yet unclassified' }
SVGWritingMode class >> rightToLeft [

	^ 'rl'
]

{ #category : #'as yet unclassified' }
SVGWritingMode class >> rightToLeftTopToBottom [

	^ 'rl-tb'
]

{ #category : #'as yet unclassified' }
SVGWritingMode class >> topToBottom [

	^ 'tb'
]

{ #category : #'as yet unclassified' }
SVGWritingMode class >> topToBottomRightToLeft [

	^ 'tb-rl'
]
