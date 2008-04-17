Extension { #name : #SVGCanvas }

{ #category : #'*SeasideDynamicSVG-Mootools' }
SVGCanvas >> mooCallback: callback [
	
	| id url |
	id := callbacks
		storeCallback:
			((SVGMooCallback new)
				block: callback;
				callbacks: self callbacks;
				yourself).
	url := context actionUrl copy.
	url addParameter: id.
	^url
]

{ #category : #'*SeasideDynamicSVG-Mootools' }
SVGCanvas >> mooRequestHtml [
	
	^MOORequestHTML on: self
]
