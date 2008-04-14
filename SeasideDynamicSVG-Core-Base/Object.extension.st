Extension { #name : #Object }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Object >> toSVGPaint [
	^ self toSVGString
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Object >> toSVGString [
	" seaside 2.8 compatible, a 2.9 specific version should send toString "
	
	^ self asString
]
