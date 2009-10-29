Extension { #name : #WAPainterVisitor }

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainterVisitor >> svgvisitComponent: aComponent [
	^self svgvisitPresenter: aComponent
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainterVisitor >> svgvisitDecoration: aDecoration [
	self svgvisitPresenter: aDecoration
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainterVisitor >> svgvisitDecorationsOfComponent: aComponent [
	aComponent decoration svgaccept: self
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainterVisitor >> svgvisitDelegation: aDelegation [
	self svgvisitDecoration: aDelegation
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainterVisitor >> svgvisitPainter: aPainter [
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainterVisitor >> svgvisitPresenter: aPresenter [
	^self svgvisitPainter: aPresenter
]

{ #category : #'*SeasideDynamicSVG-Core' }
WAPainterVisitor >> svgvisitTask: aTask [
	self svgvisitComponent: aTask
]
