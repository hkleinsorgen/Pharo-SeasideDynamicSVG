Extension { #name : #WAIframeTag }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAIframeTag >> svgEmbedComponent: aComponent width: svgWidth height: svgHeight [

	| url embedTag |
	url := canvas urlForEmbeddingSVGIn: aComponent.
	self url: url.
	svgWidth notNil ifTrue: [ self width: svgWidth ]. 
	svgHeight notNil ifTrue: [ self height: svgHeight ].
	^ self
	
]
