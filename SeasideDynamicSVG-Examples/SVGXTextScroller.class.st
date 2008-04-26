Class {
	#name : #SVGXTextScroller,
	#superclass : #SVGXTextPath,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXTextScroller >> defaultViewBox [
	^ Rectangle 
		origin: 50 @ 0
		extent: 1000 @ 500
]

{ #category : #drawing }
SVGXTextScroller >> drawDefinitionsOn: svg [ 
	| pathID |
	pathID := svg nextId.
	svg definitions: 
		[ svg path
			id: pathID ;
			defaultIsAbsolute ;
			moveTo: 0 @ -150 ;
			arcTo: 0@150 radius: 150@150 rotation: Float pi large: false sweep: true;
			arcTo: 0@-150 radius: 150@150 rotation: Float pi  large: false sweep: true.
		].
	^ pathID
]

{ #category : #drawing }
SVGXTextScroller >> drawSVGContentOn: svg [ 

	| pathID |
	pathID := self drawDefinitionsOn: svg .
	svg group
		transform: [ : tl | tl translate: 500@200];
		with: [
			svg use
				element: pathID ;
				stroke: Color gray ;
				strokeWidth: 2;
				opacity: 0.6;
				fill: nil.
			 svg textShape
				family: self fontFamily ;
				size: 48;
				fill: Color cyan ;
				stroke: Color blue;
				shiftY: -10;
				opacity: 0.7;
				with: 
					[ svg transformAnimation
						type: SVGRotationType attribute;
						attributeName: 'transform'; 
						duration: 10 seconds; 
						from: '360'; 
						to: '0'; 
						repeatIndefinite.
					svg textPath
						path: pathID ;
							with: [ 
								svg text: 'Welcome to Seaside'.
							] 
					].
			 svg textShape
				family: self fontFamily ;
				size: 48;
				fill: Color orange ;
				stroke: Color red;
				shiftY: -10;
				opacity: 0.7;
				with: 
					[ svg transformAnimation
						type: SVGRotationType attribute;
						attributeName: 'transform'; 
						duration: 15 seconds; 
						from: '360'; 
						to: '0'; 
						repeatIndefinite.
					svg textPath
						path: pathID ;
							with: [ 
								svg text: 'Powered by Smalltalk'.
							] 
					] .
	].
]
