Extension { #name : #WAHtmlRoot }

{ #category : #'*SeasideDynamicSVG-Core' }
WAHtmlRoot >> addSVGNameSpace [
	" associate qualifier svg with the SVG namespace "

	self htmlAttributes at: 'xmlns:svg' put: 'http://www.w3.org/2000/svg'.
]
