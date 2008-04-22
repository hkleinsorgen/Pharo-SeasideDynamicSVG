Class {
	#name : #SVGXClock,
	#superclass : #SVGXPrototypeTest,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGXClock >> drawClockOn: svg [

	| textId gradient |
	textId := svg nextId.
	svg definitions: [
		(gradient := svg linearGradient) 
			startX: '0%'; startY: '0%'; stopX: '100%'; stopY: '100%';
			with: [
				svg gradientStopAt: '5%' color: Color orange.
				svg gradientStopAt: '95%' color: Color yellow.
			]	
	].
	svg textShape
		id: textId;
		family: self fontFamily; 
		size: 48;
		strokeWidth: 2; 
		stroke: Color black; 
		fill: gradient;
		position: 5@80;
		with: Time now printString.
]

{ #category : #drawing }
SVGXClock >> drawSVGContentOn: svg [

	svg group
		script: (svg updater
				every: 1 seconds;
				on: #drawClockOn: of: self);
		with: [ self drawClockOn: svg ].
]

{ #category : #rendering }
SVGXClock >> renderToolbarOn: html [
]
