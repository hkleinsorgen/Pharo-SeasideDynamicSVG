Class {
	#name : #SVGPaintAttributeSet,
	#superclass : #SVGAttributeSet,
	#category : #'SeasideDynamicSVG-Core-Paint'
}

{ #category : #accessing }
SVGPaintAttributeSet >> color: aPaint [ 
	^ self 
		attributeAt: 'color'
		put: aPaint toSVGPaint
]

{ #category : #accessing }
SVGPaintAttributeSet >> colorInterpolation: anObject [
	^ self attributeAt: 'color-interpolation' put: anObject 
]

{ #category : #'convenience-rendering' }
SVGPaintAttributeSet >> colorOptimizeQuality [

	self colorRendering: 'optimizeQuality'
]

{ #category : #'convenience-rendering' }
SVGPaintAttributeSet >> colorOptimizeSpeed [

	self colorRendering: 'optimizeSpeed'
]

{ #category : #accessing }
SVGPaintAttributeSet >> colorRendering: anObject [
	^ self attributeAt: 'color-rendering' put: anObject 
]

{ #category : #accessing }
SVGPaintAttributeSet >> fill: aPaint [ 
	^ self 
		attributeAt: 'fill'
		put: aPaint toSVGPaint
]

{ #category : #accessing }
SVGPaintAttributeSet >> fillRule: anObject [
	^ self attributeAt: 'fill-rule' put: anObject 
]

{ #category : #'convenience-full rule' }
SVGPaintAttributeSet >> fillRuleEvenOdd [

	self fillRule: 'evenodd'
]

{ #category : #'convenience-full rule' }
SVGPaintAttributeSet >> fillRuleNonZero [

	self fillRule: 'nonzero'
]

{ #category : #accessing }
SVGPaintAttributeSet >> stroke: aPaint [ 
	^ self 
		attributeAt: 'stroke'
		put: aPaint toSVGPaint
]

{ #category : #accessing }
SVGPaintAttributeSet >> strokeDasharray: anObject [
	^ self attributeAt: 'stroke-dasharray' put: anObject 
]

{ #category : #accessing }
SVGPaintAttributeSet >> strokeDashoffset: anObject [
	^ self attributeAt: 'stroke-dashoffset' put: anObject 
]

{ #category : #accessing }
SVGPaintAttributeSet >> strokeLinecap: anObject [
	^ self attributeAt: 'stroke-linecap' put: anObject 
]

{ #category : #accessing }
SVGPaintAttributeSet >> strokeLinejoin: anObject [
	^ self attributeAt: 'stroke-linejoin' put: anObject 
]

{ #category : #accessing }
SVGPaintAttributeSet >> strokeMiterlimit: anObject [
	^ self attributeAt: 'stroke-miterlimit' put: anObject 
]

{ #category : #accessing }
SVGPaintAttributeSet >> strokeWidth: anObject [
	^ self attributeAt: 'stroke-width' put: anObject 
]
