Class {
	#name : #SVGHTML5CapableBrowserAdaptor,
	#superclass : #SVGUserAgentAdaptor,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGHTML5CapableBrowserAdaptor class >> matchesSpecialAgent: userAgent [
	"Inline SVG supported by Chrome/FF/... (see http://caniuse.com/#svg-html5)"
	| start stop |
	^ (self userAgent: userAgent is: 'Chrome' leastVersion: 10)
		or:[self userAgent: userAgent is: 'Firefox' leastVersion: 4]

]

{ #category : #private }
SVGHTML5CapableBrowserAdaptor class >> userAgent: userAgent is: aName leastVersion: aNumber [
	| start stop |
	^ ((start := userAgent indexOfSubCollection: aName) = 0) not 
			and:[stop := userAgent indexOf: $. startingAt: start. (userAgent copyFrom: start + aName size + 1 to: stop - 1) asInteger > aNumber]
]

{ #category : #'browser specific' }
SVGHTML5CapableBrowserAdaptor >> prepareResponseForInlinedSVG: aResponse [
	"Do nothing: html5 supports svg embedding"
	
]
