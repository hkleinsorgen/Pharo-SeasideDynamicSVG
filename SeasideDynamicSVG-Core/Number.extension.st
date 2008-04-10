Extension { #name : #Number }

{ #category : #'*SeasideDynamicSVG-Core' }
Number >> svgAttributeValue [
	" return a string that conforms to http://www.w3.org/TR/SVG11/types.html "
	
	^ self displayString
]
