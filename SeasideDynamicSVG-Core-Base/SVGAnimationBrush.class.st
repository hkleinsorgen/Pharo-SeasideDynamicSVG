Class {
	#name : #SVGAnimationBrush,
	#superclass : #SVGTag,
	#category : #'SeasideDynamicSVG-Core-Animation'
}

{ #category : #accessing }
SVGAnimationBrush >> accumulate: aString [

	self attributeAt: 'accumulate' put: aString
]

{ #category : #accessing }
SVGAnimationBrush >> addAnimationValue: aValue [

	self attributes at: 'values' append: aValue toSVGString separator: ';'
]

{ #category : #accessing }
SVGAnimationBrush >> addKeySpline: aValue [

	self attributes at: 'keySplines' append: aValue toSVGString separator: ';'
]

{ #category : #accessing }
SVGAnimationBrush >> addKeyTime: aValue [

	self attributes at: 'keyTimes' append: aValue toSVGString separator: ';'
]

{ #category : #accessing }
SVGAnimationBrush >> additive: aString [

	self attributeAt: 'additive' put: aString
]

{ #category : #accessing }
SVGAnimationBrush >> animationValues: aListString [

	self attributeAt: 'values' put: aListString
]

{ #category : #accessing }
SVGAnimationBrush >> attributeName: aString [

	self attributeAt: 'attributeName' put: aString
]

{ #category : #accessing }
SVGAnimationBrush >> attributeType: aString [

	self attributeAt: 'attributeType' put: aString
]

{ #category : #convenience }
SVGAnimationBrush >> attributeTypeCSS [

	self attributeType: 'CSS'
]

{ #category : #convenience }
SVGAnimationBrush >> attributeTypeXML [

	self attributeType: '"XML'
]

{ #category : #accessing }
SVGAnimationBrush >> begin: aString [

	self attributeAt: 'begin' put: aString
]

{ #category : #accessing }
SVGAnimationBrush >> by: byValue [

	self attributeAt: 'by' put: byValue
]

{ #category : #accessing }
SVGAnimationBrush >> duration: aString [

	self attributeAt: 'dur' put: aString
]

{ #category : #accessing }
SVGAnimationBrush >> end: aString [

	self attributeAt: 'end' put: aString
]

{ #category : #accessing }
SVGAnimationBrush >> fillAnimation: aString [

	self attributeAt: 'fill' put: aString
]

{ #category : #convenience }
SVGAnimationBrush >> fillFreeze [

	self fillAnimation: 'freeze'
]

{ #category : #convenience }
SVGAnimationBrush >> fillRemove [

	self fillAnimation: 'remove'
]

{ #category : #accessing }
SVGAnimationBrush >> from: fromValue [

	self attributeAt: 'from' put: fromValue
]

{ #category : #accessing }
SVGAnimationBrush >> interpolationMode: aCalcMode [  

	self attributeAt: 'calcMode' put: aCalcMode
]

{ #category : #accessing }
SVGAnimationBrush >> keySplines: aListString [

	self attributeAt: 'keySplines' put: aListString
]

{ #category : #accessing }
SVGAnimationBrush >> keyTimes: aListString [

	self attributeAt: 'keyTimes' put: aListString
]

{ #category : #accessing }
SVGAnimationBrush >> max: aClockValue [

	self attributeAt: 'max' put: aClockValue
]

{ #category : #accessing }
SVGAnimationBrush >> min: aClockValue [

	self attributeAt: 'min' put: aClockValue
]

{ #category : #accessing }
SVGAnimationBrush >> repeatCount: aNumberOrIndefinite [

	self attributeAt: 'repeatCount' put: aNumberOrIndefinite
]

{ #category : #accessing }
SVGAnimationBrush >> repeatDuration: aClockValueOrIndefinite [

	self attributeAt: 'repeatDur' put: aClockValueOrIndefinite
]

{ #category : #convenience }
SVGAnimationBrush >> repeatIndefinite [

	self repeatCount: 'indefinite'
]

{ #category : #accessing }
SVGAnimationBrush >> restart: aString [

	self attributeAt: 'restart' put: aString
]

{ #category : #convenience }
SVGAnimationBrush >> restartAlways [

	self restart: 'always'
]

{ #category : #convenience }
SVGAnimationBrush >> restartNever [

	self restart: 'never'
]

{ #category : #convenience }
SVGAnimationBrush >> restartWhenNotActive [

	self restart: 'whenNotActive'
]

{ #category : #accessing }
SVGAnimationBrush >> target: anElementReference [

	self attributeAt: 'xlink:href' put: anElementReference toSVGIDReference
]

{ #category : #accessing }
SVGAnimationBrush >> to: toValue [

	self attributeAt: 'to' put: toValue
]
