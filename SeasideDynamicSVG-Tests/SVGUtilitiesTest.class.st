Class {
	#name : #SVGUtilitiesTest,
	#superclass : #TestCase,
	#category : #'SeasideDynamicSVG-Tests'
}

{ #category : #'testing - attribute values' }
SVGUtilitiesTest >> testColorToString [
	" generic toSVGString conversion "
	self assert: Color black toSVGString = 'rgb(0,0,0)'.
	self assert: Color white toSVGString = 'rgb(255,255,255)'.
	self assert: (Color 
			r: 1
			g: 254
			b: 126
			range: 255) toSVGString = 'rgb(1,254,126)'.
	0 
		to: 255
		do: 
			[ : i | 
			| b rgb svg color |
			b := i printString.
			color := Color 
				r: i
				g: i
				b: i
				range: 255.
			rgb := 'rgb(' , b , ',' , b , ',' , b , ')'.
			svg := color toSVGString.
			self assert: rgb = svg.
			" special toSVGSPaint conversion "
			self assert: rgb = color toSVGPaint ].
	self assert: 'rgb(1,254,126)' toSVGString = 'rgb(1,254,126)'.

	" special toSVGSPaint conversion "
	self assert: nil toSVGPaint = 'none'
]

{ #category : #'testing - attribute values' }
SVGUtilitiesTest >> testNumberToString [
	self assert: 1 toSVGString = '1'.
	self assert: 1.0 toSVGString = '1.0'.
	self assert: (1 / 2) toSVGString = '0.5'.
	self assert: '1.25' toSVGString = '1.25'
]

{ #category : #'testing-transformations' }
SVGUtilitiesTest >> testTransformationList [
	| list|
	list := SVGTransformList new.
	list add: (SVGTranslationType with: 1@-3.5); add: (SVGScaleType with: (1@2)); add: (SVGRotationType with: 90).
	self assert: list toSVGString = 'translate(1,-3.5) scale(1,2) rotate(90)'
]

{ #category : #'testing-transformations' }
SVGUtilitiesTest >> testTransformationTypes [
	self assert: (SVGScaleType with: (1@2)) toSVGString = 'scale(1,2)'.
	self assert: (SVGScaleType with: (2)) toSVGString = 'scale(2)'.
	self assert: (SVGScaleType with: (2.5)) toSVGString = 'scale(2.5)'.
	self assert: (SVGRotationType with: 90) toSVGString = 'rotate(90)'.
	self assert: (SVGRotationType with: -45) toSVGString = 'rotate(-45)'.
	self assert: (SVGTranslationType with: 4@5) toSVGString = 'translate(4,5)'.
	self assert: (SVGTranslationType with: -3.5) toSVGString = 'translate(-3.5)'.
	self assert: (SVGSkewXType with: 3) toSVGString = 'skewX(3)'.
	self assert: (SVGSkewYType with: -5) toSVGString = 'skewY(-5)'
]
