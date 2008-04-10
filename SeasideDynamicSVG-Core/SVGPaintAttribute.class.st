Class {
	#name : #SVGPaintAttribute,
	#superclass : #SVGAttribute,
	#instVars : [
		'color',
		'fill',
		'fillRule',
		'stroke',
		'strokeDasharray',
		'strokeDashoffset',
		'strokeLinecap',
		'strokeLinejoin',
		'strokeMiterlimit',
		'strokeWidth',
		'colorInterpolation',
		'colorRendering'
	],
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGPaintAttribute >> color [
	^ color
]

{ #category : #accessing }
SVGPaintAttribute >> color: anObject [
	color := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> colorInterpolation [
	^ colorInterpolation
]

{ #category : #accessing }
SVGPaintAttribute >> colorInterpolation: anObject [
	colorInterpolation := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> colorRendering [
	^ colorRendering
]

{ #category : #accessing }
SVGPaintAttribute >> colorRendering: anObject [
	colorRendering := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> fill [
	^ fill
]

{ #category : #accessing }
SVGPaintAttribute >> fill: anObject [
	fill := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> fillRule [
	^ fillRule
]

{ #category : #accessing }
SVGPaintAttribute >> fillRule: anObject [
	fillRule := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> stroke [
	^ stroke
]

{ #category : #accessing }
SVGPaintAttribute >> stroke: anObject [
	stroke := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> strokeDasharray [
	^ strokeDasharray
]

{ #category : #accessing }
SVGPaintAttribute >> strokeDasharray: anObject [
	strokeDasharray := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> strokeDashoffset [
	^ strokeDashoffset
]

{ #category : #accessing }
SVGPaintAttribute >> strokeDashoffset: anObject [
	strokeDashoffset := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> strokeLinecap [
	^ strokeLinecap
]

{ #category : #accessing }
SVGPaintAttribute >> strokeLinecap: anObject [
	strokeLinecap := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> strokeLinejoin [
	^ strokeLinejoin
]

{ #category : #accessing }
SVGPaintAttribute >> strokeLinejoin: anObject [
	strokeLinejoin := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> strokeMiterlimit [
	^ strokeMiterlimit
]

{ #category : #accessing }
SVGPaintAttribute >> strokeMiterlimit: anObject [
	strokeMiterlimit := anObject
]

{ #category : #accessing }
SVGPaintAttribute >> strokeWidth [
	^ strokeWidth
]

{ #category : #accessing }
SVGPaintAttribute >> strokeWidth: anObject [
	strokeWidth := anObject
]
