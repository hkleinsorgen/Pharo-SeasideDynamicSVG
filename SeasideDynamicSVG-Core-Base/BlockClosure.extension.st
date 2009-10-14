Extension { #name : #BlockClosure }

{ #category : #'*SeasideDynamicSVG-Core' }
BlockClosure >> drawSVGOn: aRenderer [
	self numArgs = 0
		ifTrue: [self value]
		ifFalse: [self value: aRenderer]
]
