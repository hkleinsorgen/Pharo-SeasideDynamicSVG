Class {
	#name : #SVGXLineTest,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXLineTest >> defaultHeight [

	^ 300
]

{ #category : #drawing }
SVGXLineTest >> drawSVGContentOn: svg [

	svg line 
		strokeWidth: 1; stroke: Color green; 
		from: 10@10 to: 200@10.
	svg line 
		strokeWidth: 2; stroke: Color red; 
		from: 10@20 to: 250@20.
	svg line 
		strokeWidth: 4; stroke: Color blue;  opacity: 0.6;
		from: 10@30 to: 300@30.
	svg line 
		strokeWidth: 2; stroke: Color blue; dashed; 
		from: 10@40 to: 300@40.
	svg line 
		strokeWidth: 2; stroke: Color blue; dotted; 
		from: 10@50 to: 300@50.
	svg line
		strokeWidth: 2; stroke: Color blue; strokeDasharray: '10,2,2,2'; 
		from: 10@60 to: 300@60.
	svg polyline 
		stroke: Color orange; strokeWidth: 2; fill: nil;
		add: 0@80; add: 10@150; add: 20@85.
	svg polygon 
		stroke: Color blue; strokeWidth: 2; fill: Color yellow;
		opacity: 0.7;
		add: 150@75; add: 179@161;
		add: 269@161; add: 197@215; add: 223@301;
		add: 150@250; add: 77@301; add: 103@215;
		add: 31@161; add: 121@161.
]
