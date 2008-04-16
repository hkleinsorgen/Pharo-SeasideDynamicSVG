Class {
	#name : #SVGXPrototypeTest,
	#superclass : #SVGXAjaxTest,
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #ajax }
SVGXPrototypeTest >> ajaxActionFor: elementId on: html callback: aBlock [ 

	^ html updater
		id: elementId;
		callback: aBlock;
		yourself
]

{ #category : #drawing }
SVGXPrototypeTest >> drawClockOn: svg [

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
		font: [ : font | font family: self fontFamily; size: 48 ];
		paint:  [ : paint | paint strokeWidth: 2; stroke: Color black; fill: gradient ];
		position: 5@180;
		with: Time now printString.
]

{ #category : #drawing }
SVGXPrototypeTest >> drawLiveClockOn: svg [

	svg group
		script: (svg updater
				every: 500 milliSeconds;
				on: #drawClockOn: of: self);
		with: [ self drawClockOn: svg ].
]

{ #category : #drawing }
SVGXPrototypeTest >> drawSVGContentOn: svg [ 

	super drawSVGContentOn: svg.
	self drawLiveClockOn: svg.
]

{ #category : #rendering }
SVGXPrototypeTest >> renderToolbarContentOn: html [

	super renderToolbarContentOn: html.
	html space.
	html anchor onClick: (html evaluator callback: [:script | script element id: 'svg'; remove]);
		 with: 'Remove SVG (Ajax)'.
	html space.
	html anchor onClick: (html evaluator callback: [:script | script element id: 'middleBar'; remove]);
		 with: 'Remove middle bar (Ajax)'.

]
