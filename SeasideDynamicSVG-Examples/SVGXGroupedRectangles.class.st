Class {
	#name : #SVGXGroupedRectangles,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGXGroupedRectangles >> drawRectanglesOn: svg extent: extent mid: mid [

	 svg rectangle
		origin: 0@0;
		extent: extent.
	 svg rectangle
		origin: mid x@0;
		extent: extent;
		cornerRadius: 20@20.

]

{ #category : #drawing }
SVGXGroupedRectangles >> drawSVGContentOn: svg [ 

	| extent mid |
	mid := (self width / 2) @ (self height / 2).
	extent := mid - (20@20).
	svg description: 'Some rectangles grouped by a <g> tag'.
	svg rectangle
		fill: Color lightGray; 
		stroke: Color black; 
		opacity: 0.3;
		origin: 0@0;
		extent: self width@self height.
	svg group 
		fill: Color yellow; 
		stroke: Color blue; 
		transform: [ : transform | transform translate: 10.5@10.5];
		with: [
			 self drawRectanglesOn: svg extent: extent mid: mid
		].
	svg group 
		fill: Color orange; 
		stroke: Color red; 
		transform: [ : transform | transform translate: 10.5@(mid y + 10.5)];
		with: [
			 self drawRectanglesOn: svg extent: extent mid: mid
		].

]
