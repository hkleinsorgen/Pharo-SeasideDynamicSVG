Extension { #name : #WAIframeTag }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAIframeTag >> embedSVGComponent: aComponent width: svgWidth height: svgHeight [

	| url embedTag |
	url := canvas urlForEmbeddingSVGComponent: aComponent.
	self url: url.
	svgWidth notNil ifTrue: [ self width: svgWidth ]. 
	svgHeight notNil ifTrue: [ self height: svgHeight ].
	^ self
	
]
