Extension { #name : #WAHtmlRoot }

{ #category : #'*SeasideDynamicSVG-Core' }
WAHtmlRoot >> svgBeTransitional [
	" IE won't display inlined SVG when propert XHTML doctypes are used.
	It is HIGHLY recommended to use embedded SVGs instead of this awful workaround "

	^ self docType: '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">'
]
