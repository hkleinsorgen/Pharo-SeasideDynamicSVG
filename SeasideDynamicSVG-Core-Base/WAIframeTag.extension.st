Extension { #name : #WAIframeTag }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAIframeTag >> embedSVGComponent: aComponent width: svgWidth height: svgHeight [

	| theUrl embedTag |
	theUrl := canvas urlForEmbeddingSVGComponent: aComponent.
	self url: theUrl.
	svgWidth notNil ifTrue: [ self width: svgWidth ]. 
	svgHeight notNil ifTrue: [ self height: svgHeight ].
	
]
