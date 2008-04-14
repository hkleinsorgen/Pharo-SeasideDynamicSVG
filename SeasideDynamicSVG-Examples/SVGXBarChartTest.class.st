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
	
	svg polygon add: p1; add: p2; add: p4; add: p3;
			paint: [:a | a fill: barColor; stroke: 'none'];
			setOpacity: 0.6.
	svg polygon add: p2; add: p6; add: p7; add: p4;
			paint: [:a | a fill: barColor; stroke: 'none'];
			setOpacity: 0.4.
	svg polygon add: p1; add: p5; add: p6; add: p2;
			paint: [:a | a fill: barColor; stroke: 'none'];
			setOpacity: 0.8.
	svg textShape
			transform: [:t | t translate: p5 + (10@-2); rotate: -90];
			font: [:font | font family: 'Verdana'; size: 10 ];
			with: barHeight
			
			
			

]

{ #category : #drawing }
SVGXBarChartTest >> drawSVGContentOn: svg [
	| barWidth barGap nextX |
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
		paint: [:a | a strokeWidth: 1; stroke: '#ccc'];
		from: 0@200 to: 400@200
			
			

]
