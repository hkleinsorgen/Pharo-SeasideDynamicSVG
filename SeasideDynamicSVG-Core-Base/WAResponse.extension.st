Extension { #name : #WAResponse }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAResponse >> beSVG [
	
	contentType := SVGRoot defaultContentType
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAResponse >> beSVGXHTML [
	
	contentType := 'application/xhtml+xml'
]
