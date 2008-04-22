Class {
	#name : #SVGXBarChartTest,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXBarChartTest >> defaultHeight [

	^ 220
]

{ #category : #drawing }
SVGXBarChartTest >> drawBarOn: svg color: barColor height: barHeight width: barWidth startY: yStart x: currentX [
	
	| p1 p2 p3 p4 p5 p6 p7 offset |
	offset := (barWidth * 0.5) rounded.
	p1 := Point x: currentX y: yStart - barHeight.
	p2 := Point x: currentX + barWidth y: p1 y.
	p3 := Point x: p1 x  y: yStart.
	p4 := Point x: p2 x  y: p3 y.
	p5 := Point x: p1 x + offset  y: p1 y - offset.
	p6 := Point x: p5 x + barWidth  y: p5 y.
	p7 := Point x: p6 x y: p6 y + barHeight.
	
	svg polygon 
			add: p1; add: p2; add: p4; add: p3;
			fill: barColor; 
			stroke: nil;
			opacity: 0.6.
	svg polygon 
			add: p2; add: p6; add: p7; add: p4;
			fill: barColor; 
			stroke: nil;
			opacity: 0.4.
	svg polygon 
			add: p1; add: p5; add: p6; add: p2;
			fill: barColor;
			stroke: nil;
			opacity: 0.8.
	svg textShape
			transform: [:t | t translate: p5 + (10@-2); rotate: -90];
			family: self fontFamily; 
			size: 10;
			with: barHeight
			
			
			

]

{ #category : #drawing }
SVGXBarChartTest >> drawSVGContentOn: svg [
	| barWidth barGap nextX |
	svg definitions: [
		svg filter id: 'blur'; with: [svg gaussianBlurFilter input: 'SourceAlpha'; stdDeviation: 4]].
	barWidth := 25.
	nextX := 0.
	barGap := barWidth + 16.
	self drawBarOn: svg color: '#090' height: 100 width: barWidth startY: 200 x: 0.
	nextX := nextX + barGap.
	self drawBarOn: svg color: '#6699cc' height: 80 width: barWidth startY: 200 x: nextX.
	nextX := nextX + barGap.
	self drawBarOn: svg color: '#f66' height: 120 width: barWidth startY: 200 x: nextX.
	nextX := nextX + barGap.
	self drawBarOn: svg color: '#aaa' height: 50 width: barWidth startY: 200 x: nextX.
	nextX := nextX + barGap.
	self drawBarOn: svg color: '#686' height: 140 width: barWidth startY: 200 x: nextX.
	nextX := nextX + barGap.
	self drawBarOn: svg color: 'yellow' height: 114 width: barWidth startY: 200 x: nextX.
	svg line
		strokeWidth: 1; 
		stroke: '#ccc';
		from: 0@200 to: 400@200.
	svg group transform: [:t | t translate: 470@110];
		with: [
			"svg circle radius: 96; paint: [:p | p fill: '#ccc']; setOpacity: 0.6.
			svg circle radius: 90; paint: [:p | p fill: '#ccc']; setOpacity: 0.4."
			svg circle 
				radius: 95; 
				fill: 'black'; 
				opacity: 0.3; 
				useFilter: 'blur'.
			self drawSegmentOn: svg from: 0 to: 30 color: '#6699cc'.
			self drawSegmentOn: svg from: 30 to: 120 color: 'red'.
			self drawSegmentOn: svg from: 120 to: 150 color: 'green'.
			self drawSegmentOn: svg from: 150 to: 170 color: 'pink'.
			self drawSegmentOn: svg from: 170 to: 360 color: 'yellow'.
		].
		

			

]

{ #category : #drawing }
SVGXBarChartTest >> drawSegmentOn: svg from: startAngle to: endAngle color: aColor [
	svg path
		fill: aColor; 
		stroke: '#444';
		fillOpacity: 0.6;
		drawPieSegmentFrom: startAngle to: endAngle length: 100.
]
