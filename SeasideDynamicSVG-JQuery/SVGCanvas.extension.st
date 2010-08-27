Extension { #name : #SVGCanvas }

{ #category : #'*SeasideDynamicSVG-JQuery' }
SVGCanvas >> jQuery [
	"A jQuery instance should always carry the WARenderCanvas as a rendererClass and not  the SVGCanvas since otherwise #html: render blocks will get the SVGCanvas to render on, which is _not_ applicable"
	^ (JQueryClass context: self context)
		rendererClass: WARenderCanvas;
		yourself
]
