Extension { #name : #WARequestContext }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARequestContext >> svgUserAgentAdaptor [

	^ self properties at: #svgUserAgentAdaptor ifAbsentPut: [ SVGUserAgentAdaptor adaptorForAgent: self requestContext request userAgent.]
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARequestContext >> svgUserAgentAdaptor: anAdaptor [

	^ self properties at: #svgUserAgentAdaptor put: anAdaptor
]
