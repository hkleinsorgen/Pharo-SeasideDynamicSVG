Class {
	#name : #SVGXChooserApplication,
	#superclass : #SVGXApplication,
	#instVars : [
		'svgComponent'
	],
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #accessing }
SVGXChooserApplication class >> description [

	^ 'Displays a SVG component'
]

{ #category : #'class initialization' }
SVGXChooserApplication class >> path [
	
	^'SVG/chooser'
]

{ #category : #accessing }
SVGXChooserApplication >> availableExamples [

	| labelBlock |
	labelBlock := self labelBlock.
	^ (SVGXExample allSubclasses 
		select: [ : cl | cl availableForChooser ]) 
		asSortedCollection: [ : cl1 : cl2 | (labelBlock value: cl1)  <= (labelBlock value: cl2) ]
]

{ #category : #accessing }
SVGXChooserApplication >> children [

	^ Set with: svgComponent
]

{ #category : #actions }
SVGXChooserApplication >> choose: svgComponentClass [

	svgComponent := svgComponentClass new.
	svgComponent embedSelector: self embedSelector
]

{ #category : #rendering }
SVGXChooserApplication >> containerStyle [  

^ super containerStyle" ,
'
	float: right;
	width: auto;
'
"

]

{ #category : #initialization }
SVGXChooserApplication >> initializeChildren [
	svgComponent := self availableExamples first new
]

{ #category : #private }
SVGXChooserApplication >> labelBlock [

	^ [ : cl |
		cl name asString copyReplaceAll: 'SVGX' with: ''
	]
]

{ #category : #rendering }
SVGXChooserApplication >> renderChooserOn: html [ 

	| examples |
	html div class: 'ToolbarRow'; with: [
		html form: 
			[	
				html text: 'Show '.
				examples := self availableExamples.
				html select
					list: examples;
					labels: self labelBlock;
					selected: svgComponent class ;
					beSubmitOnChange ;
					"size: examples size;"
					callback: [ : svgComponentClass | self choose: svgComponentClass ] 
			].
		].

]

{ #category : #rendering }
SVGXChooserApplication >> renderOwnContentOn: html [ 

	super renderOwnContentOn: html.
"	html div 
		class: 'Chooser'; 
		with: [ self renderChooserOn: html ]."
	
]

{ #category : #rendering }
SVGXChooserApplication >> renderToolbarContentOn: html [ 

	super renderToolbarContentOn: html .
	self renderChooserOn: html.
	
]

{ #category : #rendering }
SVGXChooserApplication >> style [ 

^ super style
",
'

div.Chooser {
	width: 150px;
	float: left;
}
'
"
]

{ #category : #accessing }
SVGXChooserApplication >> title [

	^ 'Chooser'
]
