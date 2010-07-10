Extension { #name : #WACanvas }

{ #category : #'*SeasideDynamicSVG-Core-private' }
WACanvas >> renderSVGDocumentFor: aComponent [ 

	^ self class builder render: [ : renderer |
			renderer svg drawWith: [ : svgCanvas |svgCanvas render: aComponent 
		]]
]

{ #category : #'*SeasideDynamicSVG-Core-private' }
WACanvas >> svgEmbedComponent: aComponent brush: brush width: svgWidth height: svgHeight [

	| url embedTag |
	url := self urlForEmbeddingSVGIn: aComponent.
	brush 
		url: url; 
		type: SVGRoot defaultContentType.
	svgWidth notNil ifTrue: [ brush width: svgWidth ]. 
	svgHeight notNil ifTrue: [ brush height: svgHeight ].
	^ brush
	
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WACanvas >> svgTagsNeedNamespace [

	^ false
]

{ #category : #'*SeasideDynamicSVG-Core-private' }
WACanvas >> urlForEmbeddingSVGIn: aComponent [ 

	| document handler |
	document := self renderSVGDocumentFor: aComponent.
	^ self context urlForDocument: document mimeType: (SVGMimeType fromString: SVGRoot defaultContentType) fileName: nil
]
