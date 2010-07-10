Class {
	#name : #SVGExportCanvas,
	#superclass : #SVGCanvas,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #tags }
SVGExportCanvas >> anchor [
	
	^self brush: SVGDisabledAnchorBrush new

]
