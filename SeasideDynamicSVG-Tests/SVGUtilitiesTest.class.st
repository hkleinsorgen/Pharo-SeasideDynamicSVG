Class {
	#name : #SVGUtilitiesTest,
	#superclass : #TestCase,
	#category : #'SeasideDynamicSVG-Tests'
}

{ #category : #'testing - attribute values' }
SVGUtilitiesTest >> testColorAsAttributeValue [
	self assert: Color black toSVGString = 'rgb(0,0,0)'.
	self assert: Color white toSVGString = 'rgb(255,255,255)'.
	self assert: (Color 
			r: 1
			g: 254
			b: 126
			range: 255) toSVGString = 'rgb(1,254,126)'.
	self assert: 'rgb(1,254,126)' toSVGString = 'rgb(1,254,126)'
]

{ #category : #'testing - attribute values' }
SVGUtilitiesTest >> testNumberAsAttributeValue [
	self assert: 1 toSVGString = '1'.
	self assert: 1.0 toSVGString = '1.0'.
	self assert: (1 / 2) toSVGString = '0.5'.
	self assert: '1.25' toSVGString = '1.25'
]
