Extension { #name : #JQAnimate }

{ #category : #'*SeasideDynamicSVG-JQuery' }
JQAnimate >> svgTranslateFirstCoordinateTo: aCoordinate [
	
	self parameterAt: #svgY1 put: aCoordinate y;
		 	parameterAt:#svgX1 put: aCoordinate x.
]

{ #category : #'*SeasideDynamicSVG-JQuery' }
JQAnimate >> svgTranslateSecondCoordinateTo: aCoordinate [
	
	self parameterAt: #svgY2 put: aCoordinate y;
		 	parameterAt:#svgX2 put: aCoordinate x.
]

{ #category : #'*SeasideDynamicSVG-JQuery' }
JQAnimate >> svgTranslateTo: aCoordinate [
	self parameterAt:#svgTransform put:'translate(', aCoordinate x asString ,' ',aCoordinate y asString ,')'
	 
]
