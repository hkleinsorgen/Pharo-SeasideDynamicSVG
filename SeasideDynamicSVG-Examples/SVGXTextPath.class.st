Class {
	#name : #SVGXTextPath,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXTextPath >> defaultViewBox [
	^ Rectangle 
		origin: 50 @ 0
		extent: 1000 @ 300
]

{ #category : #accessing }
SVGXTextPath >> defaultWidth [
	
	^ 800
]

{ #category : #drawing }
SVGXTextPath >> drawSVGContentOn: svg [ 

	| pathID |
	svg referencedElements: [
		svg path
			id: (pathID := svg nextId);
			defaultIsAbsolute;
			moveTo: 100@200;
			curveWithAll: (Array with: 200@100  with: 300@0 with: 400@100);
			curveWithAll: (Array with: 500@200  with: 600@300 with: 700@200);
			curveWithAll: (Array with: 800@100  with: 900@100 with: 900@100).
	].
	svg use elementID: pathID; paint: [ : paint | paint stroke: Color red; fill: nil ].
	svg textShape
		font: [ : font | font family: 'Verdana, sans-serif'; size: 36 ];
		paint: [ : paint | paint fill: Color cyan; stroke: Color blue];
		with: [ 
			svg textPath
				pathID: pathID;
				with: [ svg text: 'Row, row, row your boat, gently down the stream'].
		].
]
