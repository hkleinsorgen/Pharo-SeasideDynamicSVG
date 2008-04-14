Extension { #name : #BlockContext }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
BlockContext >> drawSVGOn: aRenderer [
	self numArgs = 0
		ifTrue: [self value]
		ifFalse: [self value: aRenderer]
]
