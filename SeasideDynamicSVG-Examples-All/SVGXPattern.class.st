Class {
	#name : #SVGXPattern,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #drawing }
SVGXPattern >> drawSVGContentOn: svg [ 

	| radialGradient  patternRect pattern |
	svg definitions: [
		(radialGradient := svg radialGradient)
			center: 25@25;
			focal: 75@75;
			radius: 50; 
			gradientUnits: SVGCoordinateSystem userSpaceOnUse;
			with: [
				svg gradientStopAt: '0%' color: Color yellow.
				svg gradientStopAt: '50%' color: Color cyan.
				svg gradientStopAt: '100%' color: Color blue.
			].
		patternRect := 	Rectangle origin: 0@0 corner: 100@100.
		(pattern := svg pattern) 
			patternUnits: SVGCoordinateSystem userSpaceOnUse;
			referenceRectangle: patternRect;
			with: [
				svg rectangle
				paint: [ : paint | 
					paint fill: radialGradient;
					stroke: Color black
				];
				rectangle: (patternRect insetBy: 10@10).
			]	
	].
	svg group
		with: [
			svg rectangle
				paint: [ : paint | 
					paint 
						fill: pattern;
						stroke: Color black.
				];
				rectangle: (Rectangle origin: 0@0 extent: self width@self height).
		].

]
