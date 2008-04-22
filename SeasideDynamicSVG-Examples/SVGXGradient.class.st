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

	| radialGradient diagonalGradient rectangle  |
	svg definitions: [
		(radialGradient := svg radialGradient)
			center: (150@25);
			focal: (250@75);
			radius: 200; 
			gradientUnits: SVGCoordinateSystem userSpaceOnUse;
			with: [
				svg gradientStopAt: '0%' color: Color yellow.
				svg gradientStopAt: '50%' color: Color cyan.
				svg gradientStopAt: '100%' color: Color blue.
			].
		(diagonalGradient := svg linearGradient) 
			startX: '0%'; startY: '0%'; stopX: '100%'; stopY: '100%';
			with: [
				svg gradientStopAt: '5%' color: Color blue.
				svg gradientStopAt: '95%' color: Color green.
			]	
	].
	rectangle := Rectangle origin: 0@0 extent: 400@100.
	svg group
		transform: [ : transform | transform translate: 10@10];
		with: [
			svg rectangle
				fill: radialGradient;
				stroke:  Color black;
				rectangle: rectangle.
		].
	svg group
		transform: [ : transform | transform translate: 10@150];
		with: [
			svg rectangle
				fill: diagonalGradient;
				stroke: Color black;
				rectangle: rectangle.
		].

]
