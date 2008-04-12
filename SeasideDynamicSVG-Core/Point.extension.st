Extension { #name : #Point }

{ #category : #'*SeasideDynamicSVG-Core' }
Point >> toSVGString [
	" return a string that conforms to http://www.w3.org/TR/SVG11/types.html "
	^x toSVGString, ',',y toSVGString
]
