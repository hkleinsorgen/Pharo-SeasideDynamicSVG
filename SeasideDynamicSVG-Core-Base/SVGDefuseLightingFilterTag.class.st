Class {
	#name : #SVGDefuseLightingFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #accessing }
SVGDefuseLightingFilterTag >> diffuseConstant: aNumber [
	self
		attributeAt: 'diffuseConstant'
		put: aNumber.

]

{ #category : #accessing }
SVGDefuseLightingFilterTag >> kernelUnitLength: aNumberList [
	self
		attributeAt: 'kernelUnitLength'
		put: aNumberList.

]

{ #category : #accessing }
SVGDefuseLightingFilterTag >> surfaceScale: aNumber [
	self
		attributeAt: 'surfaceScale'
		put: aNumber.

]

{ #category : #private }
SVGDefuseLightingFilterTag >> tag [
	^'feDiffuseLighting'
]
