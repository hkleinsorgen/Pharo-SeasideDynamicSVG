Class {
	#name : #SVGXMarker,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGXMarker >> drawSVGContentOn: svg [ 

	| arrowhead |
	svg definitions: [
		arrowhead := svg marker.
		arrowhead 
			viewBox: (Rectangle origin: 0@0 extent: 10@10);
			markerUnits: SVGCoordinateSystem strokeWidth;
			referencePoint: 0@5;
			extent: 4@3;
			autoOrientation;
			with: [
				svg path
					moveTo: 0@0;
					lineTo: 10@5;
					lineTo: 0@10;
					closePath.
			]
	].
	svg path
		marker: [ : marker | marker markerEnd: arrowhead ];
		paint: [ : paint | paint
			fill: nil;
			stroke: Color black;
			strokeWidth: 20.
		];
		moveTo: 0@100;
		lineTo: 200@100;
		lineTo: 400@200.
]
