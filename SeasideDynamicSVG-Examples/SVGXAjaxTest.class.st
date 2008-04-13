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
	^ self rectangleWidth > 100 ifTrue: ['red'] ifFalse: ['green']
]

{ #category : #drawing }
SVGXAjaxTest >> drawBarOn: svg [ 

	svg rectangle 
		paint: [:paint | paint fill: self color; stroke: Color black ]; 
		opacity: [:opacity | opacity opacity: 0.5 ];
		origin: 0@0;
		width: self rectangleWidth; 
		height:20.
	svg textShape
		font: [ : font | font family: 'Arial'; size: 14 ];
		position: 6@15;
		with: self rectangleWidth
]

{ #category : #drawing }
SVGXAjaxTest >> drawSVGContentOn: svg [ 

	| groupId |
	groupId := svg nextId.
	svg group
		onClick: (svg updater 
			id: groupId;
			callback: [: updateSvg | 
				self enlarge. 
				self drawBarOn: updateSvg.  
			]);
		with: [ 
			svg group
				id: groupId;
				with: [ self drawBarOn: svg ]
		].
		


]

{ #category : #actions }
SVGXAjaxTest >> enlarge [

	self rectangleWidth: self rectangleWidth + 10
]

{ #category : #'initialize-release' }
SVGXAjaxTest >> initialize [
	super initialize.
	rectangleWidth := WAValueHolder with: 100
]

{ #category : #accessing }
SVGXAjaxTest >> rectangleWidth [

	^ rectangleWidth contents
]

{ #category : #accessing }
SVGXAjaxTest >> rectangleWidth: anInteger [

	rectangleWidth contents: anInteger
]

{ #category : #rendering }
SVGXAjaxTest >> renderContentOn: html [ 
	html anchor onClick: (
		html updater id: 'svg';
			callback: [:r | 
				self enlarge.
				self renderInlinedOn: r]);
		 with: '+'.
	html space.
	html anchor onClick: (
		html updater id: 'svg';
			callback: [:r | 
				self shrink.
				self renderInlinedOn: r]);
		 with: '-'.
	html div id: 'svg';
		style: 'border:1px solid #ccc;background:#ffffe0; padding: 0.5em';
		with: [self renderInlinedOn: html]
]

{ #category : #actions }
SVGXAjaxTest >> shrink [
	self rectangleWidth > 0 ifTrue: [ self rectangleWidth: self rectangleWidth - 10]
]

{ #category : #accessing }
SVGXAjaxTest >> states [

	^ Array with: rectangleWidth
]
