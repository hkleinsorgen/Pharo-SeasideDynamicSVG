Class {
	#name : #SVGXGradient,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXGradient >> defaultHeight [

	^ 280
]

{ #category : #drawing }
SVGXGradient >> drawSVGContentOn: svg [ 

	| horizontalGradient diagonalGradient rectangle  |
	svg definitions: [
		(horizontalGradient := svg linearGradient) with: [
			svg gradientStopAt: '5%' color: Color orange.
			svg gradientStopAt: '95%' color: Color yellow.
		].
		(diagonalGradient := svg linearGradient) 
			x1: '0%'; y1: '0%'; x2: '100%'; y2: '100%';
			with: [
				svg gradientStopAt: '5%' color: Color blue.
				svg gradientStopAt: '95%' color: Color green.
			]	
	].
	rectangle := Rectangle origin: 10@10 extent: 400@100.
	svg group: [
		svg rectangle
			paint: [ : paint | 
				paint fill: nil;
				stroke: Color black
			];
			rectangle: rectangle.
		svg rectangle
			paint: [ : paint | 
				paint 
					fill: horizontalGradient;
					stroke: nil.
			];
			rectangle: rectangle.
	].
	svg group
		transform: [ : transform | transform translate: 0@150];
		with: [
			svg rectangle
				paint: [ : paint | 
					paint fill: nil;
					stroke: Color black
				];
				rectangle: rectangle.
			svg rectangle
				paint: [ : paint | 
					paint 
						fill: diagonalGradient;
						stroke: nil.
				];
				rectangle: rectangle.
		].

]
