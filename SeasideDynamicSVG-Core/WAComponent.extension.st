Extension { #name : #WAComponent }

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> drawSVGContentOn: aRenderer [

]

{ #category : #'*SeasideDynamicSVG-Core' }
WAComponent >> drawSVGOn: aRenderer [

	self decorationChainDo: [ :each | each drawSVGWithContext: aRenderer context ]
]
