Extension { #name : #Object }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Object >> toSVGPaint [

	^ self toSVGString
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Object >> toSVGString [

	^ self greaseString
]
