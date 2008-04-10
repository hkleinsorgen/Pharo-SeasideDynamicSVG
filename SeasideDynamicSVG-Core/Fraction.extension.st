Extension { #name : #Fraction }

{ #category : #'*SeasideDynamicSVG-Core' }
Fraction >> svgAttributeValue [
	" return a string that conforms to http://www.w3.org/TR/SVG11/types.html "
	
	^ self asFloat svgAttributeValue
]
