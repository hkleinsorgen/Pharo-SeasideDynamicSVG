Extension { #name : #WAComponent }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAComponent >> drawSVGOn: aRenderer [ 
	self decorationChainDo: [ : each | each drawSVGWithContext: aRenderer context ]
]
