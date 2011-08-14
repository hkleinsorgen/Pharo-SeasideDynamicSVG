Class {
	#name : #SVGUserAgentAdaptor,
	#superclass : #Object,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGUserAgentAdaptor class >> adaptorForAgent: userAgentOrNil [

	| adaptorClass | 
	adaptorClass := self allSubclasses detect: [ : subclass | subclass matchesSpecialAgent: userAgentOrNil ] ifNone: [ nil].
	^ adaptorClass notNil
		ifTrue: [ adaptorClass new ]
		ifFalse: [ SVGXHTMLBrowserAdaptor new ]
]

{ #category : #accessing }
SVGUserAgentAdaptor class >> matchesSpecialAgent: userAgent [

	^ false
]

{ #category : #'browser specific' }
SVGUserAgentAdaptor >> fullTagForInlinedSVGTag: tag [

	^ tag
]

{ #category : #'browser specific' }
SVGUserAgentAdaptor >> prepareResponseForInlinedSVG: aResponse [


]

{ #category : #'browser specific' }
SVGUserAgentAdaptor >> renderPreambleForInlinedSVGOn: canvas [ 
	
]

{ #category : #'browser specific' }
SVGUserAgentAdaptor >> updateRoot: aHtmlRoot [
]
