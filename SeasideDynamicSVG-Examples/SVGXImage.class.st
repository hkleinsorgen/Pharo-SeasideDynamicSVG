Class {
	#name : #SVGXImage,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

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
	svg image transform: [:t | t translate: 72@100; rotate: -180];
			width: 72; height: 48;
			x:0; y:0;
			url: 'http://www.w3.org/Icons/w3c_home'.
	svg image setOpacity: 0.8;
			width: 200; height: 60;
			x:100; y:200;
			url: 'http://www.w3.org/Icons/w3c_home';
			preserveAspectRatio: 'xMinYMin meet'
]
