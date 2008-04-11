Class {
	#name : #SVGXText,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXText >> defaultWidth [
	
	^ 800
]

{ #category : #drawing }
SVGXText >> drawSVGContentOn: svg [ 

	svg textShape
		font: [ : font | font family: 'Verdana, sans-serif'; size: 36 ];
		paint: [ : paint | paint fill: Color red; stroke: Color blue];
		position: 10@70;
		with: [ svg text: 'Advertisement space for rent']
]
