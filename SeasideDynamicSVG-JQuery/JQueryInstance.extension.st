Extension { #name : #JQueryInstance }

{ #category : #'*SeasideDynamicSVG-JQuery' }
JQueryInstance >> addSVGClass: aString [
	"Adds the specified class(es) to each of the set of matched elements."
	
	self call: 'addSVGClass' with: aString
]

{ #category : #'*SeasideDynamicSVG-JQuery' }
JQueryInstance >> removeSVGClass: aString [ 
	"Remove one or all classes from each element in the set of matched elements."
	
	self call: 'removeSVGClass' with: aString
]

{ #category : #'*SeasideDynamicSVG-JQuery' }
JQueryInstance >> svgLoad [
	"Load SVG elements"
	
	^ self create: JQSVGLoad 
]
