Class {
	#name : #SVGLineTag,
	#superclass : #SVGStrokesBrush,
	#category : #'SeasideDynamicSVG-Core-Shapes'
}

{ #category : #convenience }
SVGLineTag >> from: fromPoint to: toPoint [
	self x1: fromPoint x; y1: fromPoint y; x2: toPoint x; y2: toPoint y
]

{ #category : #accessing }
SVGLineTag >> tag [
	^'line'
]

{ #category : #accessing }
SVGLineTag >> x1: aValue [ 
	self attributeAt: 'x1' put: aValue
]

{ #category : #accessing }
SVGLineTag >> x2: aValue [ 
	self attributeAt: 'x2' put: aValue
]

{ #category : #accessing }
SVGLineTag >> y1: aValue [ 
	self attributeAt: 'y1' put: aValue
]

{ #category : #accessing }
SVGLineTag >> y2: aValue [ 
	self attributeAt: 'y2' put: aValue
]
