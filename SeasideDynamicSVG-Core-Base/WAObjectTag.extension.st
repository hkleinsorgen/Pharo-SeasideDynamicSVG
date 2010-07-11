Extension { #name : #WAObjectTag }

{ #category : #'*SeasideDynamicSVG-Core' }
WAObjectTag >> embedSVGComponent: aComponent width: svgWidth height: svgHeight [

	canvas svgEmbedComponent: aComponent brush: self width: svgWidth height: svgHeight.
	^ self
]
