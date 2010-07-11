Class {
	#name : #SVGXMondrianClassHierarchy,
	#superclass : #SVGXMondrian,
	#category : #'SeasideDynamicSVG-ExamplesMondrian'
}

{ #category : #accessing }
SVGXMondrianClassHierarchy >> defaultHeight [

	^ 400
]

{ #category : #drawing }
SVGXMondrianClassHierarchy >> drawSVGContentOn: svg [ 

	| view rootClass|
	view := MORenderer new.
	rootClass := self rootClass.
	view layout: (MOHorizontalSpacedTreeLayout new
		roots: [ :each | Array with: (view elementOf: rootClass) ];
		children: [ :each | 
			each subclasses 
				collect: [ :ea | view elementOf: ea ] ]).
	view style: (MOStringShape new string: #name).
	view addAll: rootClass withAllSubclasses.

	view layer: ((view layerNamed: 'inheritance')
		evident: false).
	view layout: (MOConnectorLayout new
		source: [ :each | view elementOf: each model key ];
		sourcePosition: #leftCenter;
		target: [ :each | view elementOf: each model value ];
		targetPosition: #rightCenter).
	view style: MOStraightLineShape new.
	view addAll: (rootClass allSubclasses 
		collect: [ :each | each -> each superclass ]).

	view drawSVGOn: svg convertCoordinates: self convertCoordinates	
]

{ #category : #drawing }
SVGXMondrianClassHierarchy >> rootClass [

	^ ParseNode
]
