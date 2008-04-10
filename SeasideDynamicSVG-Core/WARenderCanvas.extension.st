Extension { #name : #WARenderCanvas }

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> urlForEmbeddingSVG [
	" this is a bad hack to allow drawing of external SVG documents 
	(as opposed to inline the SVG in the HTML code).
	The parameter 'svg' is added to the URL so that SVGHybridRenderContinuation knows
	that it should draw the SVG, not render the HTML "

	| url |
	url := self context actionUrl copy.
	url addParameter: 'svg'.
	^ url

]

{ #category : #'*SeasideDynamicSVG-Core' }
WARenderCanvas >> urlForEmbeddingSVGIn: anObject [
	" this is a bad hack to allow drawing of external SVG documents 
	(as opposed to inline the SVG in the HTML code). "

	^ self urlForAction: [ anObject renderSVGDocumentOn: self ]

]
