Class {
	#name : #SVGXAnimation,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGXAnimation >> drawSVGContentOn: svg [ 

	| motionPath |
	svg rectangle
		fill: nil;
		stroke: Color blue;
		strokeWidth: 2;
		origin: 1@1;
		extent: 498@298.
	
	(motionPath := svg path)
		ensureId;
		defaultIsAbsolute;
		moveTo: 100@250;
		curveWithAll: (Array with: 100@50 with: 400@50 with: 400@250);
		fill: nil;
		stroke: Color blue;
		strokeWidth: 7.06.
		
	svg circle
		center: 100@250;
		radius: 17.64;
		fill: Color blue.

	svg circle
		center: 250@100;
		radius: 17.64;
		fill: Color blue.

	svg circle
		center: 400@250;
		radius: 17.64;
		fill: Color blue.
		
	svg path
		defaultIsAbsolute;
		moveTo: -25@-12.5;
		lineTo: 25@-12.5;
		lineTo: 0@-87.5;
		closePath;
		fill: Color yellow;
		stroke: Color red;
		strokeWidth: 7.06;
		with: [
			svg motion
				duration: 6 seconds;
				repeatIndefinite;
				rotateAuto;
				with: [ svg motionPath pathElement: motionPath ]
		].

]
