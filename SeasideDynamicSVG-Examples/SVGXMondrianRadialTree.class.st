Class {
	#name : #SVGXMondrianRadialTree,
	#superclass : #SVGXMondrian,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXMondrianRadialTree >> defaultHeight [

	^ 300
]

{ #category : #drawing }
SVGXMondrianRadialTree >> drawSVGContentOn: svg [ 

	| view |
	view := MORenderer new.
	view layout: (MOPainting
		treeLayout: MORadialTreeLayout
		aritiy: 3 on: view).
	view addAll: (0 to: 53).

	view drawSVGOn: svg convertCoordinates: self convertCoordinates	
]
