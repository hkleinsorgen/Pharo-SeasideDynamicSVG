Class {
	#name : #SVGMergeFilterTag,
	#superclass : #SVGFilterPrimitive,
	#category : #'SeasideDynamicSVG-Core-Filter'
}

{ #category : #accessing }
SVGMergeFilterTag >> isClosed [
	^false
]

{ #category : #private }
SVGMergeFilterTag >> tag [
	^'feMerge'
]
