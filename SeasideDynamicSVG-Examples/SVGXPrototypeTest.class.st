Class {
	#name : #SVGXPrototypeTest,
	#superclass : #SVGXAjaxTest,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #ajax }
SVGXPrototypeTest >> ajaxActionFor: elementId on: html callback: aBlock [ 

	^ html updater
		id: elementId;
		callback: aBlock;
		yourself
]

{ #category : #rendering }
SVGXPrototypeTest >> renderToolbarContentOn: html [

	super renderToolbarContentOn: html.
	html space.
	html anchor onClick: (html evaluator callback: [:script | script element id: 'svg'; remove]);
		 with: 'Remove SVG (Ajax)'.
	html space.
	html anchor onClick: (html evaluator callback: [:script | script element id: 'middleBar'; remove]);
		 with: 'Remove middle bar (Ajax)'.

]
