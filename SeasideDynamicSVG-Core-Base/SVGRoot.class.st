Class {
	#name : #SVGRoot,
	#superclass : #WARoot,
	#instVars : [
		'docType',
		'svgAttributes',
		'svgTag'
	],
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #'instance creation' }
SVGRoot class >> context: aRenderingContext [
	
	^self new setContext: aRenderingContext
]

{ #category : #accessing }
SVGRoot class >> defaultContentType [

	^'image/svg+xml'
]

{ #category : #accessing }
SVGRoot class >> defaultNamespace [
	
	^'http://www.w3.org/2000/svg'
]

{ #category : #accessing }
SVGRoot class >> xlinkNamespace [
	
	^ 'http://www.w3.org/1999/xlink'.
]

{ #category : #doctype }
SVGRoot >> beSVG10 [
	
	self docType:
			'<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">'
]

{ #category : #doctype }
SVGRoot >> beSVG11 [
	
	self docType:
			'<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">'
]

{ #category : #doctype }
SVGRoot >> beSVG11Basic [
	
	self docType: '<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1 Basic//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-basic.dtd">'
]

{ #category : #doctype }
SVGRoot >> beSVG11Tiny [
	
	self docType: '<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1 Tiny//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11-tiny.dtd">'
]

{ #category : #doctype }
SVGRoot >> beSVG12 [
	"There is no DTD for SVG 1.2  "
	
	self docType: nil
]

{ #category : #writing }
SVGRoot >> close: aDocument [
	
	self writeFootOn: aDocument
]

{ #category : #accessing }
SVGRoot >> contentType [
	^self class defaultContentType
	
]

{ #category : #accessing }
SVGRoot >> context [
	
	^context
]

{ #category : #doctype }
SVGRoot >> docType [
	
	^docType
]

{ #category : #doctype }
SVGRoot >> docType: aDocType [
	
	docType := aDocType
]

{ #category : #'initialize-release' }
SVGRoot >> initialize [
	
	svgTag := SVGRootTag new.
	self initializeDefaults
]

{ #category : #'initialize-release' }
SVGRoot >> initializeDefaults [
	
	self beSVG12.

]

{ #category : #writing }
SVGRoot >> open: aDocument [

	self writeHeadOn: aDocument
]

{ #category : #private }
SVGRoot >> setContext: aRenderingContext [
	
	context := aRenderingContext
]

{ #category : #accessing }
SVGRoot >> svgTag [
	
	^svgTag
]

{ #category : #writing }
SVGRoot >> writeFootOn: aDocument [
	
	aDocument closeTag: svgTag tag
]

{ #category : #writing }
SVGRoot >> writeHeadOn: aDocument [
	aDocument nextPutAll: '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
'.
	docType notNil ifTrue: [aDocument nextPutAll: docType].
	aDocument openTag: svgTag tag attributes: svgTag attributes.
]
