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
	"Function to execute when an error occurs duing loading the svg content "
	self optionAt: 'onLoad' put: anObject asFunction
]

{ #category : #options }
JQSVGLoad >> onError: anObject [
	"Function to execute after loading the svg content"
	self optionAt: 'onError' put: anObject asFunction
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
							self requestContext svgUserAgentAdaptor prepareResponseForInlinedSVG: response.
							response doNotCache.
							self render: aRenderable on: response stream ]]
]

{ #category : #accessing }
JQSVGLoad >> url [
	^ self renderContext actionUrl copy
			addField: (self renderContext callbacks
								store: (JSAjaxCallback on: [ self processCallback ]));
			yourself
]
