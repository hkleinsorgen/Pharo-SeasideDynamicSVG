Class {
	#name : #SVGXMooToolsTest,
	#superclass : #SVGXAjaxTest,
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #ajax }
SVGXMooToolsTest >> ajaxActionFor: elementId on: html callback: aBlock [ 
	^ (html mooRequestHtml
		update: elementId;
		callback: [ : c : a : r | aBlock value: c ]) send
]
