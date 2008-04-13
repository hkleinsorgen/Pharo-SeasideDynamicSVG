Class {
	#name : #SVGXAjaxApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'svg'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXAjaxApplication class >> description [

	^ 'Ajax with SVG'
]

{ #category : #accessing }
SVGXAjaxApplication class >> path [
	
	^'SVG/ajax'
]

{ #category : #accessing }
SVGXAjaxApplication class >> register [

	| app |
	app := super register.
	app addLibrary: SULibrary.
	^ app
]

{ #category : #initialization }
SVGXAjaxApplication >> initializeChildren [
	svg := SVGXAjaxTest new
]

{ #category : #rendering }
SVGXAjaxApplication >> renderContentOn: html [ 
	 html heading: 'Ajax Test'.
	html anchor onClick: (html updater id: 'svg';
				callback: [:r | self svg enlarge. self renderSVGOn: r]); with: '+'.
	html space.
	html anchor onClick: (html updater id: 'svg';
				callback: [:r | self svg shrink. self renderSVGOn: r]); with: '-'.
	html div id: 'svg';
		style: 'border:1px solid #ccc;background:#ffffe0';
		with: [self renderSVGOn: html]

]

{ #category : #rendering }
SVGXAjaxApplication >> renderSVGOn: html [ 
	html render: self svg
]

{ #category : #accessing }
SVGXAjaxApplication >> svg [
	svg ifNil: [svg := SVGXAjaxTest new].
	^svg
]
