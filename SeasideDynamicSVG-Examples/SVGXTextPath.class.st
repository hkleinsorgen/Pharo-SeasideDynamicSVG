Class {
	#name : #SVGXTextPath,
	#superclass : #SVGXText,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXTextPath >> defaultViewBox [
	^ Rectangle 
		origin: 50 @ 0
		extent: 1000 @ 300
]

{ #category : #accessing }
SVGXTextPath >> defaultWidth [
	
	^ 800
]

{ #category : #drawing }
SVGXTextPath >> drawSVGContentOn: svg [ 
	| pathID |
	svg definitions: 
		[ svg path
			id: (pathID := svg nextId) ;
			defaultIsAbsolute ;
			moveTo: 100 @ 200 ;
			curveWithAll: (Array 
					with: 200 @ 100
					with: 300 @ 0
					with: 400 @ 100) ;
			curveWithAll: (Array 
					with: 500 @ 200
					with: 600 @ 300
					with: 700 @ 200) ;
			curveWithAll: (Array 
					with: 800 @ 100
					with: 900 @ 100
					with: 900 @ 100) ].
	svg use
		element: pathID ;
		stroke: Color red ;
		fill: nil.
	svg anchor
		target: '_top' ;
		callback: [ self nextMessage ] ;
		with: 
			[ svg textShape
				family: self fontFamily ;
				size: 36;
				fill: Color cyan ;
				stroke: Color blue;
				with: 
					[ svg textPath
						path: pathID ;
						with: [ svg text: self currentMessage ] ] ]
]

{ #category : #accessing }
SVGXTextPath >> messages [

	^ #('Row, row, row your boat, gently down the stream' 'Merrily, merrily, merrily, merrily, life is but a dream')
]
