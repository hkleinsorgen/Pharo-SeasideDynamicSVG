Class {
	#name : #SVGXImage,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples-All'
}

{ #category : #accessing }
SVGXImage >> defaultViewBox [
	^ Rectangle 
		origin: 0 @ 0
		extent: 800 @ 400
]

{ #category : #drawing }
SVGXImage >> drawSVGContentOn: svg [ 
	svg image
			width: 72; height: 48;
			x:0; y:0;
			url: 'http://www.w3.org/Icons/w3c_home'.
	svg image setOpacity: 0.5;
			width: 72; height: 48;
			x:100; y:0;
			url: 'http://www.w3.org/Icons/w3c_home'.
	svg image setOpacity: 0.5;
			transform: [:t | t skewX: -40];
			width: 72; height: 48;
			x:250; y:0;
			url: 'http://www.w3.org/Icons/w3c_home'.
	svg image transform: [:t | t translate: 72@100; rotate: -180];
			width: 72; height: 48;
			x:0; y:0;
			url: 'http://www.w3.org/Icons/w3c_home'.
	svg image setOpacity: 0.8;
			width: 400; height: 80;
			x:0; y:140;
			url: 'http://www.w3.org/Icons/w3c_home';
			preserveAspectRatio: 'xMinYMin meet'
]
