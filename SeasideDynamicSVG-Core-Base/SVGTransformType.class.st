Class {
	#name : #SVGTransformType,
	#superclass : #SVGType,
	#category : #'SeasideDynamicSVG-Core-Transform'
}

{ #category : #printing }
SVGTransformType >> contentsAsString [
	^contents toSVGString 
]

{ #category : #printing }
SVGTransformType >> toSVGString [
	^self attribute,'(',self contentsAsString,')'
]
