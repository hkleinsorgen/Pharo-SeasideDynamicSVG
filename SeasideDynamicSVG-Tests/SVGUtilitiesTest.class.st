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
	self assert: (Color r: 1 g: 254 b: 126 range: 255) toSVGString = 'rgb(1,254,126)'.
	0 to: 255 do: [ : i | | b rgb svg color |
		b := i printString.
		color := Color r: i g: i b: i range: 255.
		rgb := 'rgb(' , b , ',' , b , ',' , b , ')'.
		svg := color toSVGString.
		self assert: rgb = svg.
		" special toSVGSPaint conversion "
		self assert: rgb = color toSVGSPaint.
	].
	self assert: 'rgb(1,254,126)' toSVGString = 'rgb(1,254,126)'.

	" special toSVGSPaint conversion "
	self assert: nil toSVGSPaint = 'none'.
]

{ #category : #'testing - attribute values' }
SVGUtilitiesTest >> testNumberToString [
	self assert: 1 toSVGString = '1'.
	self assert: 1.0 toSVGString = '1.0'.
	self assert: (1 / 2) toSVGString = '0.5'.
	self assert: '1.25' toSVGString = '1.25'
]
