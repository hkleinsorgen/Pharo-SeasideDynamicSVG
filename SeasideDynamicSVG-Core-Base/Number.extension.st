Extension { #name : #Number }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Number >> toSVGString [
	" return a string that conforms to http://www.w3.org/TR/SVG11/types.html "
	^ self greaseString
]
