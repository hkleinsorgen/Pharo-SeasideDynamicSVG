Class {
	#name : #SVGUtilitiesTest,
	#superclass : #TestCase,
	#category : #'SeasideDynamicSVG-Tests'
}

{ #category : #'testing - attribute values' }
SVGUtilitiesTest >> testColorAsAttributeValue [

	self assert: Color black svgAttributeValue = 'rgb(0,0,0)'.
	self assert: Color white svgAttributeValue = 'rgb(255,255,255)'.
	
	self assert: (Color r: 1 g: 254 b: 126 range: 255) svgAttributeValue = 'rgb(1,254,126)'.
	self assert: 'rgb(1,254,126)' svgAttributeValue = 'rgb(1,254,126)'.
	
]

{ #category : #'testing - attribute values' }
SVGUtilitiesTest >> testNumberAsAttributeValue [

	self assert: 1 svgAttributeValue = '1'.
	self assert: 1.0 svgAttributeValue = '1.0'.
	self assert: (1/2)  svgAttributeValue = '0.5'.
	
	self assert: '1.25' svgAttributeValue = '1.25'.
	
]
