Extension { #name : #WAResponse }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAResponse >> beSVG [
	
	self contentType: SVGRoot defaultContentType
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAResponse >> beSVGXHTML [

	self contentType: 'application/xhtml+xml'
]
