Class {
	#name : #SVGImageTag,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #attributes }
SVGImageTag >> clip: aShape [

	self attributeAt: 'clip' put: aShape
]

{ #category : #attributes }
SVGImageTag >> height: aNumber [
	
	self attributeAt: 'height' put: aNumber
]

{ #category : #attributes }
SVGImageTag >> overflow: aString [

	self attributeAt: 'overflow' put: aString
]

{ #category : #attributes }
SVGImageTag >> preserveAspectRatio: aString [
	"e.g. xMinYMin meet"
	self attributes at: 'preserveAspectRatio' put: aString
]

{ #category : #private }
SVGImageTag >> tag [
	^'image'
]

{ #category : #attributes }
SVGImageTag >> url: anURIOrString [
	" URI of the image"

	self attributes at: 'xlink:href' put: anURIOrString
]

{ #category : #attributes }
SVGImageTag >> width: aNumber [
	
	self attributeAt: 'width' put: aNumber
]

{ #category : #attributes }
SVGImageTag >> x: aNumber [
	
	self attributeAt: 'x' put: aNumber .

]

{ #category : #attributes }
SVGImageTag >> y: aNumber [
	
	self attributeAt: 'y' put: aNumber .

]
