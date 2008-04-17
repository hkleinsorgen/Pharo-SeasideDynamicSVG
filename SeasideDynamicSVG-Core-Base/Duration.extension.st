Extension { #name : #Duration }

{ #category : #'*SeasideDynamicSVG-Core' }
Duration >> toSVGString [

	^ self asSeconds printString, 's'
]
