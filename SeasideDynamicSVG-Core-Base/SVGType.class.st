Class {
	#name : #SVGType,
	#superclass : #WAValueHolder,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGType class >> attribute [
	^self subclassResponsibility 
]

{ #category : #accessing }
SVGType >> attribute [

	^ self class attribute
]

{ #category : #printing }
SVGType >> toSVGString [
	^contents toSVGString
]
