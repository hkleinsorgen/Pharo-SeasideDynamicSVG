Extension { #name : #Point }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Point >> toSVGString [
	" return a string that conforms to http://www.w3.org/TR/SVG11/types.html "
	^x toSVGString, ',',y toSVGString
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
Point >> toSVGStrokeCoordinates [
	" assume that the coordiante system of this point is a classic pixmap-based one "

	^ self species 
		x: x rounded + 0.5 
		y: y rounded + 0.5 
]
