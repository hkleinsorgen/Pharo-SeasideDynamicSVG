Class {
	#name : #SVGEnumeration,
	#superclass : #Object,
	#category : #'SeasideDynamicSVG-Core-Enumerations'
}

{ #category : #accessing }
SVGEnumeration class >> auto [ 

	^ 'auto'
]

{ #category : #developers }
SVGEnumeration class >> compileSelectors [

	| str enumStr selectorStr ch enums |
	str := self enumString readStream.
	enumStr := nil.
	selectorStr := nil.
	enums := Dictionary new.
	[ str atEnd ] whileFalse: [ 
		ch := str next.
		(ch isAlphabetic or: [ ch = $- ])
			ifTrue: [
				enumStr isNil 
					ifTrue: [ 
							enumStr := String new writeStream. 
							selectorStr := String new writeStream.
					].
				ch = $- ifTrue: [
					enumStr nextPut: ch.
					ch := str next.
					enumStr nextPut: ch.
					selectorStr nextPut: ch asUppercase.
				]
				ifFalse: [ 
					enumStr nextPut: ch.
					selectorStr nextPut: ch.
				].
			]
			ifFalse: [
				enumStr notNil ifTrue: [ enums at: selectorStr contents put: enumStr contents. ].
				enumStr := nil 
			]
	].
	enumStr notNil ifTrue: [ enums at: selectorStr contents put: enumStr contents. ].
	enums keysAndValuesDo: [ : selector : enum |
		self compileText: enum selector: selector asSymbol
	]
]

{ #category : #developers }
SVGEnumeration class >> compileText: aByteArrayOrString selector: aSymbol [
	"Compiles aByteArrayOrString into a method named aSymbol that returns aByteArrayOrString as a string literal.
	aSymbol
		^ aByteArrayOrString"
	| code |
	code := String streamContents: [ :stream |
		stream nextPutAll: aSymbol; cr.
		stream tab; nextPutAll: '^ '''.
		aByteArrayOrString displayString do: [ :each |
			each = $' ifTrue: [ stream nextPut: $' ].
			stream nextPut: each ].
		stream nextPutAll: '''' ].
	SeasidePlatformSupport compile: code into: self class classified: self methodCategory
]

{ #category : #developers }
SVGEnumeration class >> enumString [

	"self compileSelectors"
	^ ''
]

{ #category : #accessing }
SVGEnumeration class >> inherit [

	^ 'inherit'
]

{ #category : #developers }
SVGEnumeration class >> methodCategory [

	^ #accessing
]
