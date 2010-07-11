Extension { #name : #WARenderContext }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderContext >> containsInlinedSVG [

	^ self properties at: #containsInlinedSVG ifAbsent: [ false ]
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderContext >> containsInlinedSVG: aBoolean [

	self properties at: #containsInlinedSVG put: aBoolean 
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderContext >> disableSVGAnchors [

	^ self properties at: #disableSVGAnchors ifAbsent: [ false ]
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderContext >> disableSVGAnchors: aBoolean [

	self properties at: #disableSVGAnchors put: aBoolean 
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderContext >> userAgentAdaptor [

	^ self properties at: #svgUserAgentAdaptor ifAbsentPut: [ SVGStandardsCompliantBrowserAdaptor new]
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARenderContext >> userAgentAdaptor: aUserAgentAdaptor [

	self properties at: #svgUserAgentAdaptor put: aUserAgentAdaptor 
]
