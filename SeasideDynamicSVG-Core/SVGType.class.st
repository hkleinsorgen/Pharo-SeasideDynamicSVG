Class {
	#name : #SVGType,
	#superclass : #WAValueHolder,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #accessing }
SVGType >> attribute [
	^self subclassResponsibility 
]

{ #category : #printing }
SVGType >> toSVGString [
	^contents toSVGString
]
