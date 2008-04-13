Class {
	#name : #SVGXAjaxTest,
	#superclass : #SVGXExample,
	#instVars : [
		'rectangleWidth'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXAjaxTest >> color [
	^rectangleWidth > 100 ifTrue: ['red'] ifFalse: ['green']
]

{ #category : #drawing }
SVGXAjaxTest >> drawSVGContentOn: svg [ 

	svg rectangle id: 'rect'; onClick: (svg evaluator callback: [:script | self increase.  ]);
		paint: [:paint | paint fill: self color; stroke: Color black ]; 
		opacity: [:opacity | opacity opacity: 0.5 ];
		origin: 0@0;
		width: rectangleWidth; height:20.
	svg textShape font: [ : font | font family: 'Arial'; size: 14 ];
				position: 6@15;
				with: rectangleWidth
]

{ #category : #accessing }
SVGXAjaxTest >> embedSelector [

	^#renderInlinedOn:
]

{ #category : #actions }
SVGXAjaxTest >> enlarge [
	rectangleWidth := rectangleWidth + 10
]

{ #category : #'initialize-release' }
SVGXAjaxTest >> initialize [
	super initialize.
	rectangleWidth := 100
]

{ #category : #actions }
SVGXAjaxTest >> shrink [
	rectangleWidth > 0 ifTrue: [rectangleWidth := rectangleWidth - 10]
]
