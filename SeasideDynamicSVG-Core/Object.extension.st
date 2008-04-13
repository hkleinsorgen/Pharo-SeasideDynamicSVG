Extension { #name : #Object }

{ #category : #'*SeasideDynamicSVG-Core' }
Object >> toSVGPaint [
	^ self toSVGString
]

{ #category : #'*SeasideDynamicSVG-Core' }
Object >> toSVGString [
	" seaside 2.8 compatible, a 2.9 specific version should send toString "
	
	^ self asString
]
