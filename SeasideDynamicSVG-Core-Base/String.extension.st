Extension { #name : #String }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
String >> toSVGIDReference [

	^ self first = $# 
		ifTrue: [ self ]
		ifFalse: ['#', self ] 
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
String >> toSVGString [
	" return a string that conforms to http://www.w3.org/TR/SVG11/types.html "
	^ self
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
String >> toSVGText [

	^ (GRCodec forEncoding: 'UTF-8') encode: self
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
String >> toSVGURIReference [
	^ ('url(*' match: self)
		ifTrue: [ self ]
		ifFalse: [ 'url(#' , self, ')' ]
]

{ #category : #'*SeasideDynamicSVG-Core-Base' }
String >> toSVGViewBoxString [

	^ self
]
