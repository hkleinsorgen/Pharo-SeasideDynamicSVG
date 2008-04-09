Class {
	#name : #SVGAnchorTag,
	#superclass : #WAAnchorTag,
	#category : #'SeasideDynamicSVG-Core'
}

{ #category : #public }
SVGAnchorTag >> with: aBlock [
	" todo: 
		super with: aBlock' 
	will add an unnecessary 'href' attribute without namespace. on the other hand it doesnt seem to bother Firefox "
	
	url isNil
		ifFalse: [self attributes at: 'xlink:href' put: url]
		ifTrue:
			[((self attributes includesKey: 'xlink:href')
				or: [self attributes includesKey: 'name'])
				ifFalse: [self attributes at: 'xlink:href' put: 'javascript:void(0)']].
	super with: aBlock
]
