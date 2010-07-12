Class {
	#name : #SVGAdobeIEPluginAdaptor,
	#superclass : #SVGUserAgentAdaptor,
	#classInstVars : [
		'agentRegex'
	],
	#category : #'SeasideDynamicSVG-InternetExplorer'
}

{ #category : #private }
SVGAdobeIEPluginAdaptor class >> agentRegex [

	agentRegex isNil  ifTrue: [
		agentRegex := '.*MSIE (\d+)\.\d+.*' asRegex
	].
	^ agentRegex
]

{ #category : #accessing }
SVGAdobeIEPluginAdaptor class >> matchesSpecialAgent: userAgent [
	" unfortunately, Microsoft doesn''t support SVG, and the Adobe SVG plugin requires some special tweaks "
	"copied from Seaside 2.9 <=  isInternetExplorer in WAFormTag"


	| regex |
	^ (userAgent includesSubString: 'Opera')
		ifTrue: [ false ]
		ifFalse: [ 
			regex := self agentRegex. 
			(regex matches: userAgent ) and: [ (regex subexpression: 2) asInteger < 9 ]
		]
]

{ #category : #'browser specific' }
SVGAdobeIEPluginAdaptor >> fullTagForInlinedSVGTag: tag [

	^ 'svg:', tag
]

{ #category : #'browser specific' }
SVGAdobeIEPluginAdaptor >> prepareResponseForInlinedSVG: aResponse [
]

{ #category : #'browser specific' }
SVGAdobeIEPluginAdaptor >> renderPreambleForInlinedSVGOn: canvas [ 
	canvas html: '
		<object id="AdobeSVG" classid="clsid:78156a80-c6a1-4bbf-8e6a-3cd390eeb4e2"></object>
		<?import namespace="svg" implementation="#AdobeSVG"?>
'
]

{ #category : #'browser specific' }
SVGAdobeIEPluginAdaptor >> updateRoot: aHtmlRoot [
	" IE won't display inlined SVG when propert XHTML doctypes are used.
	It is HIGHLY recommended to use embedded SVGs instead of this awful workaround "

	aHtmlRoot svgBeTransitional.
	SVGFixActiveXActivationLibrary default updateRoot: aHtmlRoot.
	aHtmlRoot htmlAttributes at: 'xmlns:svg' put: 'http://www.w3.org/2000/svg'.

]
