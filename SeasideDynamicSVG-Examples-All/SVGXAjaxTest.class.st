Class {
	#name : #SVGXAjaxTest,
	#superclass : #SVGXExample,
	#instVars : [
		'rectangleWidth'
	],
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #accessing }
SVGXAjaxTest class >> availableForChooser [

	" requires SULibrary, chooser doesnt include it "
	^ false
]

{ #category : #accessing }
SVGXAjaxTest >> color [
	^ self rectangleWidth > 100 ifTrue: ['red'] ifFalse: ['green']
]

{ #category : #accessing }
SVGXAjaxTest >> defaultHeight [

	^ 200
]

{ #category : #drawing }
SVGXAjaxTest >> drawBarOn: svg id: aId [

	svg rectangle id: 'rect-', aId;
		paint: [:paint | paint fill: self color; stroke: Color black ]; 
		opacity: [:opacity | opacity opacity: 0.5 ];
		origin: 0@0;
		width: self rectangleWidth; 
		height:20.
	svg textShape
		id: 'text-', aId;
		font: [ : font | font family: 'Arial'; size: 14 ];
		position: 6@15;
		with: self rectangleWidth
]

{ #category : #drawing }
SVGXAjaxTest >> drawLowerBarOn: svg [ 

	| id |
	id := 'lowerBar'.
	svg group
		id: 'lowerBarGroup';
		transform: [:t | t translate: 0@100];
		onClick: 'insertRect()';
		with: [ 
			svg group
				id: id;
				with: [ self drawBarOn: svg id: id]
		].
		


]

{ #category : #drawing }
SVGXAjaxTest >> drawMiddleBarOn: svg [ 

	| id |
	id := 'middleBar'.
	svg group
		transform: [:t | t translate: 0@50];
		onClick: '$("rect-', id, '").setAttribute("fill", "rgb(255,150,50)");  $("text-', id, '").firstChild.nodeValue  = "Click!";';
		with: [ 
			svg group
				id: id;
				with: [ self drawBarOn: svg id: id]
		].
		


]

{ #category : #drawing }
SVGXAjaxTest >> drawSVGContentOn: svg [ 

	self drawUpperBarOn: svg.
	self drawMiddleBarOn: svg.
	self drawLowerBarOn: svg.
]

{ #category : #drawing }
SVGXAjaxTest >> drawUpperBarOn: svg [ 

	| id |
	id := 'upperBar'.
	svg group
		onClick: (svg updater 
			id: id;
			callback: [: updateSvg | 
				self enlarge. 
				self drawBarOn: updateSvg id: id.  
			]);
		with: [ 
			svg group
				id: id;
				with: [ self drawBarOn: svg id: id]
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

	html div class: 'Toolbar';
		with: [
			html div class: 'ToolbarRow'; with: [ self renderToolbarContentOn: html ].
		].

	html div id: 'svg';
		style: 'border:1px solid #ccc;background:#ffffe0; padding: 0.5em';
		with: [self renderInlinedOn: html]
]

{ #category : #rendering }
SVGXAjaxTest >> renderToolbarContentOn: html [
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
	html space.
	html anchor onClick: 'insertRect()';
		 with: 'Add Rect (Javascript)'.
	html space.
	html anchor onClick: (html evaluator callback: [:script | script element id: 'svg'; remove]);
		 with: 'Remove SVG (Ajax)'.
	html space.
	html anchor onClick: (html evaluator callback: [:script | script element id: 'middleBar'; remove]);
		 with: 'Remove middle bar (Ajax)'.

]

{ #category : #accessing }
SVGXAjaxTest >> script [

	^ '
function insertRect()
{
	var newRect = document.createElementNS("http://www.w3.org/2000/svg", "rect");
	newRect.setAttribute("x", "0");
	newRect.setAttribute("y", "0");
	newRect.setAttribute("width", "50");
	newRect.setAttribute("height", "20");
	newRect.setAttribute("stroke", "black");
	newRect.setAttribute("fill", "blue");
	newRect.setAttribute("opacity", "1");
	$("lowerBar").appendChild(newRect);
}
'
]

{ #category : #actions }
SVGXAjaxTest >> shrink [
	self rectangleWidth > 0 ifTrue: [ self rectangleWidth: self rectangleWidth - 10]
]

{ #category : #accessing }
SVGXAjaxTest >> states [

	^ Array with: rectangleWidth
]
