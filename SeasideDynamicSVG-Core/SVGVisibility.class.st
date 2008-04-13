Class {
	#name : #SVGVisibility,
	#superclass : #SVGEnumeration,
	#category : #'SeasideDynamicSVG-Core-Enumerations'
}

{ #category : #accessing }
SVGVisibility class >> collapse [
	^ 'collapse'
]

{ #category : #developers }
SVGVisibility class >> enumString [

	"self compileSelectors"
	^ 'visible | hidden | collapse |  inherit'
]

{ #category : #accessing }
SVGVisibility class >> hidden [
	^ 'hidden'
]

{ #category : #accessing }
SVGVisibility class >> inherit [
	^ 'inherit'
]

{ #category : #accessing }
SVGVisibility class >> visible [
	^ 'visible'
]
