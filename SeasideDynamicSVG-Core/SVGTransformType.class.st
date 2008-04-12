Class {
	#name : #SVGTransformType,
	#superclass : #SVGType,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #printing }
SVGTransformType >> contentsAsString [
	^contents toSVGString 
]

{ #category : #printing }
SVGTransformType >> toSVGString [
	^self attribute,'(',self contentsAsString,')'
]
