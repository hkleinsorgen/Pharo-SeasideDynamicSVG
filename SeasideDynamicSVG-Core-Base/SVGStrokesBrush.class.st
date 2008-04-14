Class {
	#name : #SVGStrokesBrush,
	#superclass : #SVGShapeTag,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #'accessing-attribute sets' }
SVGStrokesBrush >> marker [

	^ self attributeSetAt: SVGMarkerAttributeSet
]

{ #category : #'accessing-attribute sets' }
SVGStrokesBrush >> marker: aBlock [

	^ aBlock value: self marker
]
