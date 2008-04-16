Class {
	#name : #SVGSymbolTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGSymbolTag >> clip: aShape [

	self attributeAt: 'clip' put: aShape
]

{ #category : #private }
SVGSymbolTag >> needsId [

	^ true
]

{ #category : #private }
SVGSymbolTag >> tag [

	^ 'symbol'
]
