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
]

{ #category : #rendering }
SVGLineTest >> renderContentOn: html [
	html div 
		style: 'padding: 1em;border:1px solid #ccc';
		with: [self renderEmbedOn: html].
]
