Class {
	#name : #SVGXTransformTest,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGXTransformTest >> drawSVGContentOn: svg [
	svg group transform: [: t | t translate: (15@15); rotate: 45; scale: 0.5 ]; with: [
		svg textShape font: [ : font | font family: 'Verdana, sans-serif'; size: 18];
				paint: [ : paint | paint fill: Color blue];
				position: 10@0;
					with: 'Transformation = translate: (15@15); rotate: 45; scale: 0.5'. 
		svg line paint: [:a | a strokeWidth: 2; stroke: Color green]; from: 10@10 to: 600@10.
		svg line paint: [:a | a strokeWidth: 2; stroke: Color red]; from: 10@20 to: 600@20.
		svg line paint: [:a | a strokeWidth: 2; stroke: Color blue]; from: 10@30 to: 600@30].

]

{ #category : #rendering }
SVGXTransformTest >> renderContentOn: html [
	html div 
		style: 'padding: 1em;border:1px solid #ccc';
		with: [self embedSVGIn: html].
]
