Class {
	#name : #SVGXText,
	#superclass : #SVGXExample,
	#instVars : [
		'messageIndex'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGXText >> currentMessage [

	^ self messages at: messageIndex contents
]

{ #category : #accessing }
SVGXText >> defaultWidth [
	
	^ 800
]

{ #category : #drawing }
SVGXText >> drawSVGContentOn: svg [ 

	svg anchor 
		target: '_top';
		callback: [ self nextMessage ];
		with: [ 	
			svg textShape
				family: self fontFamily; 
				size: 48;
				fill: Color red; 
				stroke: Color blue;
				position: 10@70;
					with: [ 
						svg textSpan
							fill: Color cyan;
							with: [ svg text: 'Space'].
						svg text: (self currentMessage).
					].
		].
]

{ #category : #initialization }
SVGXText >> initialize [

	super initialize.
	messageIndex := WAValueHolder with: 1.
]

{ #category : #accessing }
SVGXText >> messages [

	^ #(' for rent' ' - the final frontier' ' Invaders')
]

{ #category : #actions }
SVGXText >> nextMessage [

	messageIndex contents: (messageIndex contents \\ self messages size) + 1.
]

{ #category : #initialization }
SVGXText >> states [

	^ Array with: messageIndex
]
