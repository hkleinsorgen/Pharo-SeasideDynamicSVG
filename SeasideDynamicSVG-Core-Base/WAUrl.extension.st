Extension { #name : #WAUrl }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAUrl >> toSVGIDReference [

	^ '#', self fragment 
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAUrl >> toSVGURIReference [
	^ self asString
]
