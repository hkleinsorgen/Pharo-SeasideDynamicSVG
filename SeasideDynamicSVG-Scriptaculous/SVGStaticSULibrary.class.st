Class {
	#name : #SVGStaticSULibrary,
	#superclass : #SULibrary,
	#category : #'SeasideDynamicSVG-Scriptaculous'
}

{ #category : #accessing }
SVGStaticSULibrary >> fileSelectors [

	^ SULibrary default fileSelectors
]

{ #category : #accessing }
SVGStaticSULibrary >> selectorsToInclude [
	" Firefox + XHTML dont allow dynamic insertion of scripts, scriptaculous.js will cause errors "

	^ #( prototypeJs builderJs effectsJs controlsJs dragdropJs sliderJs treePatchJs )
]
