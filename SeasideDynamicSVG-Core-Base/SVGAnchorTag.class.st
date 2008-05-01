Class {
	#name : #SVGAnchorTag,
	#superclass : #WAAnchorTag,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #public }
SVGAnchorTag >> with: aBlock [
	
	url isNil
		ifTrue:
			[((self attributes includesKey: 'xlink:href')
				or: [self attributes includesKey: 'name'])
				ifFalse: [self attributes at: 'xlink:href' put: 'javascript:void(0)']]
		ifFalse: [self attributes at: 'xlink:href' put: url].
	self openTag.
	canvas nest: [
		self before.
		aBlock renderOn: canvas.
		self after ].
	self closeTag.
	closed := true
]

{ #category : #'attributes-xlink' }
SVGAnchorTag >> xlinkActuateOnRequest [

	self attributes at: 'xlink:actuate' put: 'onRequest'
]

{ #category : #'attributes-xlink' }
SVGAnchorTag >> xlinkHref: anURI [

	self url: anURI
]

{ #category : #'attributes-xlink' }
SVGAnchorTag >> xlinkShowNew [

	self attributes at: 'xlink:show' put: 'new'
]

{ #category : #'attributes-xlink' }
SVGAnchorTag >> xlinkShowReplace [

	self attributes at: 'xlink:show' put: 'replace'
]

{ #category : #'attributes-xlink' }
SVGAnchorTag >> xlinkTitle: aString [

	self attributes at: 'xlink:title' put: aString
]

{ #category : #'attributes-xlink' }
SVGAnchorTag >> xlinkType: aString [

	self attributes at: 'xlink:type' put: aString
]
