Extension { #name : #WAResponse }

{ #category : #'*SeasideDynamicSVG-Core' }
WAResponse >> beSVG [
	
	contentType := SVGRoot defaultContentType
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAResponse >> beSVGXHTML [
	
	contentType := 'application/xhtml+xml'
]
