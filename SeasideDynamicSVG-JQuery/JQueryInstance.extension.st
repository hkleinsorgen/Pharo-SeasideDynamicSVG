Extension { #name : #JQueryInstance }

{ #category : #'*SeasideDynamicSVG-JQuery' }
JQueryInstance >> svgLoad [
	"Load SVG elements"
	
	^ self create: JQSVGLoad 
]
