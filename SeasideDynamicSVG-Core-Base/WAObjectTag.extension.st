Extension { #name : #WAObjectTag }

{ #category : #'*SeasideDynamicSVG-Core' }
WAObjectTag >> svgEmbedComponent: aComponent width: svgWidth height: svgHeight [

	canvas svgEmbedComponent: aComponent brush: self width: svgWidth height: svgHeight.
	^ self
]
