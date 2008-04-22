Class {
	#name : #SVGXTransformTest,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGXTransformTest >> drawSVGContentOn: svg [
	svg group: [self renderExampleOn: svg text: 'Original'].
	
	svg group transform: [: t | t translate: (120@0); scale: 0.7 ];
		with: [self renderExampleOn: svg text: 'Scale 0.7'].
		
	svg group transform: [: t | t translate: (200@0); scale: 1@0.5 ];
		with: [self renderExampleOn: svg text: 'Scale 1@0.5'].
		
	svg group transform: [: t | t translate: (100@130); skewX: -40 ];
		with: [self renderExampleOn: svg text: 'SkewX -40'].
		
	svg group transform: [: t | t translate: (240@130); skewY: -40 ];
		with: [self renderExampleOn: svg text: 'SkewY -40'].
		
	svg group transform: [: t | t translate: (10@320); rotate: -40 ];
		with: [self renderExampleOn: svg text: 'Rotate -40'].
		
	svg group transform: [: t | t translate: (280@260); matrix: #(0.7 0.7 -0.7 0.7 0 0) ];
		with: [self renderExampleOn: svg text: 'Matrix 0.7 ..'].
		
	
	
	
]

{ #category : #private }
SVGXTransformTest >> renderExampleOn: svg text: aText [ 

	svg rectangle
		x: 0;
		y: 0;
		width: 100;
		height: 100;
		 fill: '#6699cc';
		stroke: Color red;
		opacity: 0.6.
		
	svg textShape
		family: self fontFamily;
		size: 14;
		position: 5 @ 20;
		with: aText.
		
	svg line
		strokeWidth: 2;
		stroke: Color green;
		from: 5 @ 25 to: 95 @ 25.
]
