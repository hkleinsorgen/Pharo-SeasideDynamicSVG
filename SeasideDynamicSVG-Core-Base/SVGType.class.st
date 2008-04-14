Class {
	#name : #SVGType,
	#superclass : #WAValueHolder,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGType >> attribute [
	^self subclassResponsibility 
]

{ #category : #printing }
SVGType >> toSVGString [
	^contents toSVGString
]
