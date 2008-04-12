Class {
	#name : #SVGXGroupedRectangles,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGXGroupedRectangles >> drawSVGContentOn: svg [ 

	| extent mid |
	mid := (self width / 2) @ (self height / 2).
	extent := mid - (20@20).
	svg description: 'Some rectangles grouped by a <g> tag'.
	svg rectangle
		paint: [ : paint | paint fill: Color lightGray; stroke: Color black ]; 
		opacity: [ : opacity | opacity opacity: 0.3 ];
		origin: 0@0;
		extent: self width@self height.
	svg group 
		paint: [ : paint | paint fill: Color yellow; stroke: Color blue ]; 
		with: [
			 svg rectangle
				origin: 10@10;
				extent: extent.
			 svg rectangle
				origin: (mid x + 10)@10;
				extent: extent;
				cornerRadius: 20@20.
		].
	svg group 
		paint: [ : paint | paint fill: Color orange; stroke: Color red ]; 
		with: [
			 svg rectangle
				origin: 10@(mid y + 10);
				extent: extent.
			 svg rectangle
				origin: mid + (10@10);
				extent: extent;
				cornerRadius: 20@20.
		].

]