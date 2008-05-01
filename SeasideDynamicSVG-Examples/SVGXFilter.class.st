Class {
	#name : #SVGXFilter,
	#superclass : #SVGXExample,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #drawing }
SVGXFilter >> drawSVGContentOn: svg [
	svg definitions: [
		svg filter id: 'MyFilter';
			filterUnits: 'userSpaceOnUse';
			position: 0@0;
			extent: 300@120;
			with: [
				svg gaussianBlurFilter
					input: 'SourceAlpha';
					stdDeviation: 5;
					result: 'blur'.
				svg offsetFilter
					input: 'blur';
					dx: 4;
					dy: 4;
					result: 'offsetBlur'.
				svg specularLightingFilter
					input: 'blur';
					surfaceScale: 5;
					specularConstant: 0.75;
                        specularExponent: 20;
					lightingColor: '#bbbbbb';
                        result: 'specOut';
					with: [svg pointLightFilter x: -5000;y: -10000; z: 20000].
				svg compositeFilter
					input: 'specOut';
					input2: 'SourceAlpha';
					operator: 'in';
					result: 'specOut'.
				svg compositeFilter
					input: 'SourceGraphic';
					input2: 'specOut';
					operator: 'arithmetic';
					k1:'0'; k2:'1'; k3:'1'; k4:'0';
					result: 'litPaint'.
				svg mergeFilter: [svg mergeNode input: 'offsetBlur'.
								svg mergeNode input: 'litPaint'.
								].
				]].
	svg group useFilter: 'MyFilter';
		with: [svg group: [
				svg path
					fill: 'none'; 
					stroke: '#D90000'; 
					strokeWidth: 10;
					defaultIsAbsolute;
					moveTo: 50@90;
					curveWithAll: (Array with: 0@90 with: 0@30 with: 50@30);
					lineTo: 150@30;
					curveWithAll: (Array with: 200@30 with: 200@90 with: 150@90);
					closePath.
				svg path
					fill: '#D90000';
					defaultIsAbsolute;
					moveTo: 60@80;
					curveWithAll: (Array with: 30@80 with: 30@40 with: 60@40);
					lineTo: 140@40;
					curveWithAll: (Array with: 170@40 with: 170@80 with: 140@80);
					closePath.
				svg group
					fill: '#FFFFFF'; 
					stroke: 'black';
					with: [svg textShape
							fontSize: 45; 
							fontFamily: self fontFamily;
							position: 52@76;
							with: 'SVG']]
						].
		

			

]
