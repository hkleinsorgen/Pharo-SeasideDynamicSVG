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
		font: [ : font | font family: 'Verdana, sans-serif'; size: 48 ];
		paint: [ : paint | paint fill: Color red; stroke: Color blue];
		position: 10@70;
		with: [ 
			svg textSpan
				paint: [ : paint | paint fill: Color cyan ];
				with: [ svg text: 'Space'].
			svg text: ' for rent'
		].
]
