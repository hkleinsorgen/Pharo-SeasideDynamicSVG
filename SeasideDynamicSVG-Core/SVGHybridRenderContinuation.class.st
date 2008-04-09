Class {
	#name : #SVGHybridRenderContinuation,
	#superclass : #SVGAwareRenderContinuation,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #processing }
SVGHybridRenderContinuation >> run [
	
	| req |
	((req _ self session currentRequest) notNil and: [self isSVGRequest: req])
		ifTrue: [self newSVGRenderContinuation run]
		ifFalse: [super run]
]
