Extension { #name : #WAEmbedTag }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WAEmbedTag >> embedSVGComponent: aComponent width: svgWidth height: svgHeight [

	canvas svgEmbedComponent: aComponent brush: self width: svgWidth height: svgHeight.
	^ self
]
