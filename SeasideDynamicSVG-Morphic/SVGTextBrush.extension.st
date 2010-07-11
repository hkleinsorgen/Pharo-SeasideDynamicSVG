Extension { #name : #SVGTextBrush }

{ #category : #'*SeasideDynamicSVG-Morphic' }
SVGTextBrush >> squeakFont: aFont [

	self 
		fontFamily: aFont familyName;  
		fontSize: aFont pointSize + 1.
]
