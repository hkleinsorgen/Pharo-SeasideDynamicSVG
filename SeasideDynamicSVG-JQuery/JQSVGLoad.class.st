Class {
	#name : #JQSVGLoad,
	#superclass : #JQPlugin,
	#instVars : [
		'callback'
	],
	#category : #'SeasideDynamicSVG-JQuery'
}

{ #category : #options }
JQSVGLoad >> addTo: anObject [ 
	"Setting to add to any existing content (true) or automatically clear it first (false - the default)"
	self optionAt: 'addTo' put: anObject
]

{ #category : #accessing }
JQSVGLoad >> arguments [
	^ (Array with: self url), super arguments 
]

{ #category : #options }
JQSVGLoad >> changeSize: aBoolean [ 
	"Allows the canvas to change its size (default: false)"
	self optionAt: 'changeSize' put: aBoolean
]

{ #category : #accessing }
JQSVGLoad >> method [
	^ 'svg().load'
]

{ #category : #options }
JQSVGLoad >> onComplete: anObject [
	"Function to execute after loading the svg content"
	self optionAt: 'onLoad' put: anObject asFunction
]

{ #category : #private }
JQSVGLoad >> processCallback [ 
	callback value
]

{ #category : #private }
JQSVGLoad >> render: aRenderable on: aStream [
	"Render aRenderable on aStream."
	
	| document html |
	document := WAHtmlDocument on: aStream codec: self requestContext codec.
	self renderContext document: document during: [
		html := WARenderCanvas context: self renderContext.
		html html: '<?xml version="1.0"?><!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
         "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">'.
		html svg drawWith: [ : svg | svg render: aRenderable. svg flush. ].
		html flush.
	].
	document scriptGenerator closeOn: document
]

{ #category : #callbacks }
JQSVGLoad >> svg: aRenderable [
	"Defines an svg rendering callback."
	
	aRenderable fixCallbackTemps.
	callback := [self requestContext respond: [ :response |
							response
								doNotCache;
								contentType: 'application/xhtml+xml'.
								self render: aRenderable on: response stream ]]
]

{ #category : #accessing }
JQSVGLoad >> url [
	^ self renderContext actionUrl copy
			addParameter: (self renderContext callbacks
								store: (JSAjaxCallback on: [ self processCallback ]));
			yourself
]
