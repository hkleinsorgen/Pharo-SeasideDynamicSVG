Class {
	#name : #SVGLineTest,
	#superclass : #SVGEmbeddedDocumentComponent,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGLineTest >> drawSVGContentOn: svg [
	svg line paint: [:a | a strokeWidth: 1; stroke: Color green]; from: 10@10 to: 200@10.
	svg line paint: [:a | a strokeWidth: 2; stroke: Color red]; from: 10@20 to: 250@20.
	svg line paint: [:a | a strokeWidth: 4; stroke: Color blue]; from: 10@30 to: 300@30.
	svg polyline add: 0@80; add: 10@150; add: 20@85;
			paint: [:a | a stroke: Color orange; strokeWidth: 2; fill: 'none'].
	svg polygone add: 150@75; add: 179@161;
				add: 269@161; add: 197@215; add: 223@301;
				add: 150@250; add: 77@301; add: 103@215;
				add: 31@161; add: 121@161;
			paint: [:a | a stroke: Color blue; strokeWidth: 2; fill: Color yellow];
			opacity: [:a | a opacity: 0.7]
]

{ #category : #rendering }
SVGLineTest >> renderContentOn: html [
	html div 
		style: 'padding: 1em;border:1px solid #ccc';
		with: [self renderEmbedOn: html].
]
