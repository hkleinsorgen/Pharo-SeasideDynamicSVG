Extension { #name : #WAPainter }

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainter >> drawSVGOn: aDrawer [
	"This method allows Painters to be passed into the #render: method of a Renderer.
	It should not normally be overridden. Subclasses should override #renderContentOn:.
	
	DO NOT call this method directly. Instead, pass this Painter as a parameter to the
	#render: method of aRenderer."
	
	self drawSVGWithContext: aDrawer context
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainter >> drawSVGWithContext: aDrawingContext [
	"This is the main entry point when attempting to render a Painter.
	It should not normally be overridden. Subclasses should override #renderContentOn:.
	
	You DO NOT normally need to call this method directly. Usually you have an instance
	of a Renderer (e.g. a WARenderCanvas) and can call the #render: method."
	
	aDrawingContext visitor svgvisit: self
	"aDrawingContext visitor visit: self."
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainter >> svgaccept: aVisitor [
	aVisitor svgvisitPainter: self
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainter >> svgacceptDecorated: aVisitor [
	self svgaccept: aVisitor
]
