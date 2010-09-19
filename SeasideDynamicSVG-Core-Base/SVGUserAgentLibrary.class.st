Class {
	#name : #SVGUserAgentLibrary,
	#superclass : #WAFileLibrary,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #processing }
SVGUserAgentLibrary >> updateRoot: anHtmlRoot [

	| adaptor |
	super updateRoot: anHtmlRoot .
	adaptor := self requestContext svgUserAgentAdaptor.
	adaptor updateRoot: anHtmlRoot.

]
