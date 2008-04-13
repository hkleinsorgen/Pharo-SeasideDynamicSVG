Class {
	#name : #SVGXSmiley,
	#superclass : #SVGXExample,
	#instVars : [
		'fillColor',
		'message',
		'leftEyeColor',
		'rightEyeColor',
		'happiness'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #actions }
SVGXSmiley >> beGreen [
	
	fillColor contents: Color green.
	self resetEyes.
	message contents: 'It''s not easy to be green'
]

{ #category : #actions }
SVGXSmiley >> beRed [
	
	fillColor contents: Color red.
	self resetEyes
]

{ #category : #actions }
SVGXSmiley >> beYellow [
	
	fillColor contents: Color yellow.
	self resetEyes
]

{ #category : #accessing }
SVGXSmiley >> center [
	^ (self width / 2) @ (self height / 2)
]

{ #category : #accessing }
SVGXSmiley >> defaultWidth [
	
	^ 600
]

{ #category : #drawing }
SVGXSmiley >> drawBackgroundOn: svg [ 

	 svg rectangle
		opacity: [:attr | attr opacity: 0.6];
		paint: [:attr | attr fill: (self fillColor alphaMixed: 0.5 with: Color lightBlue) ; stroke: Color black; strokeWidth: 3];
		width: self width ;
		height: self height.

]

{ #category : #drawing }
SVGXSmiley >> drawFaceOn: svg [ 
	svg circle
		paint: 
			[ : attr | 
			attr
				stroke: Color black ;
				strokeWidth: 3 ;
				fill: self fillColor ] ;
		opacity: 
			[ : attr | 
			attr
				fillOpacity: 0.8 ;
				opacity: 0.6 ] ;
		center: self center ;
		radius: self radius
]

{ #category : #drawing }
SVGXSmiley >> drawHappyMouthOn: svg [ 
	| mouthXRadius path mouthWidth outerStart outerStop innerStart innerStop radius center |
	radius := self radius.
	center := self center.
	mouthXRadius := radius * 0.8.
	mouthWidth := radius * 0.2.
	path := svg path.
	outerStart := center - (mouthXRadius @ 0).
	outerStop := center + (mouthXRadius @ 0).
	innerStart := outerStart + (mouthWidth @ 0).
	innerStop := outerStop - (mouthWidth @ 0).
	path moveTo: outerStart.
	path lineTo: innerStart.
	path 
		arcTo: innerStop
		radius: ((innerStop x - innerStart x) // 2) @ (mouthXRadius - mouthWidth)
		rotation: 0
		large: false
		sweep: false.
	path lineTo: outerStop.
	path 
		arcTo: outerStart
		radius: ((outerStop x - outerStart x) // 2) @ mouthXRadius 
		rotation: 0
		large: false
		sweep: true.
	path closePath.
	path
		paint: 
			[ : attr | 
			attr
				fill: Color white ;
				stroke: self strokeColor ;
				strokeWidth: 2 ] ;
		opacity: 
			[ : attr | 
			attr
				fillOpacity: 0.8 ;
				strokeOpacity: 1 ]
]

{ #category : #drawing }
SVGXSmiley >> drawLeftEyeOn: svg center: center distance: eyeDistance radius: eyeRadius [ 
	svg anchor
		callback: [ self hitLeftEye ] ;
		target: '_top' ;
		with: 
			[ svg circle
				center: center - (eyeDistance @ eyeDistance) ;
				radius: eyeRadius ;
				paint: 
					[ : attr | 
					attr
						fill: leftEyeColor contents ;
						stroke: self strokeColor ;
						strokeWidth: 2 ] ]
]

{ #category : #drawing }
SVGXSmiley >> drawMouthOn: svg faceCenter: center faceRadius: radius [ 
	svg anchor
		callback: [ self hitMouth ] ;
		target: '_top' ;
		with: 
			[ happiness contents > 0.5 
				ifTrue: [ self drawHappyMouthOn: svg ]
				ifFalse: [ self drawUnhappyMouthOn: svg ] ]
]

{ #category : #drawing }
SVGXSmiley >> drawRightEyeOn: svg center: center distance: eyeDistance radius: eyeRadius [ 
	svg anchor
		callback: [ self hitRightEye ] ;
		target: '_top' ;
		with: 
			[ svg circle
				center: center + (eyeDistance @ eyeDistance negated) ;
				radius: eyeRadius ;
				paint: 
					[ : attr | 
					attr
						fill: rightEyeColor contents ;
						stroke: self strokeColor ;
						strokeWidth: 2 ] ]
]

{ #category : #drawing }
SVGXSmiley >> drawSVGContentOn: svg [ 
	| eyeRadius eyeDistance |
	self drawBackgroundOn: svg.
	self drawFaceOn: svg.

	" eyes "
	eyeRadius := self radius / 6.
	eyeDistance := self radius / 3.
	self 
		drawLeftEyeOn: svg
		center: self center
		distance: eyeDistance
		radius: eyeRadius.
	self 
		drawRightEyeOn: svg
		center: self center
		distance: eyeDistance
		radius: eyeRadius.

	" mouth "
	self 
		drawMouthOn: svg
		faceCenter: self center
		faceRadius: self radius
]

{ #category : #drawing }
SVGXSmiley >> drawUnhappyMouthOn: svg [ 
	| mouthXRadius path mouthWidth outerStart outerStop innerStart innerStop yOffset center radius sadness |
	center := self center.
	radius := self radius.
	mouthXRadius := radius * 0.5.
	mouthWidth := radius * 0.10.
	yOffset := mouthXRadius.
	sadness := 0.5.
	path := svg path.
	outerStart := center - (mouthXRadius @ 0) + (0 @ yOffset).
	outerStop := center + (mouthXRadius @ 0) + (0 @ yOffset).
	innerStart := outerStart + (mouthWidth @ mouthWidth).
	innerStop := outerStop + (mouthWidth negated @ mouthWidth).
	path moveTo: outerStart.
	path lineTo: innerStart.
	path 
		arcTo: innerStop
		radius: ((innerStop x - innerStart x) / 2) @ ((mouthXRadius - mouthWidth) * sadness)
		rotation: 0
		large: false
		sweep: true.
	path lineTo: outerStop.
	path 
		arcTo: outerStart
		radius: ((outerStop x - outerStart x) / 2) @ (mouthXRadius * sadness)
		rotation: 0
		large: false
		sweep: false.
	path closePath.
	path
		paint: 
			[ : paint | 
			paint
				fill: Color white ;
				stroke: self strokeColor ;
				strokeWidth: 2 ] ;
		opacity: 
			[ : opacity | 
			opacity
				fillOpacity: 0.7 ;
				strokeOpacity: 1 ]
]

{ #category : #accessing }
SVGXSmiley >> fillColor [
	
	^fillColor contents
]

{ #category : #actions }
SVGXSmiley >> hitLeftEye [
	
	message contents: 'Ouch, you hit my left eye!'.
	leftEyeColor contents: 'rgb(64,0,255)'.
	happiness contents: 0
]

{ #category : #actions }
SVGXSmiley >> hitMouth [
	
	self resetEyes.
	message contents: 'thanks for feeding me!'
]

{ #category : #actions }
SVGXSmiley >> hitRightEye [
	
	message contents: 'Ouch, you hit my right eye!'.
	rightEyeColor contents: 'rgb(80,20,255)'.
	happiness contents: 0
]

{ #category : #initialization }
SVGXSmiley >> initialize [
	
	super initialize.
	fillColor := WAValueHolder new.
	leftEyeColor := WAValueHolder new.
	rightEyeColor := WAValueHolder new.
	message := WAValueHolder new.
	happiness := WAValueHolder with: 1.0.
	embedSelector := #renderEmbedOn:.
	self beYellow
]

{ #category : #accessing }
SVGXSmiley >> radius [

	^ (self width min: self height) / 2.2.

]

{ #category : #rendering }
SVGXSmiley >> renderActionsOn: canvas [
	
	(canvas anchor)
		callback: [self beYellow];
		with: [canvas text: 'Be yellow'].
	canvas break.
	(canvas anchor)
		callback: [self beGreen];
		with: [canvas text: 'Be green'].
	canvas break.
	(canvas anchor)
		callback: [self beRed];
		with: [canvas text: 'Be red'].
	canvas break.
	canvas text: '...or click on an eye or on the mouth'
]

{ #category : #rendering }
SVGXSmiley >> renderContentOn: canvas [ 

	super renderContentOn: canvas .
	message contents notNil
		ifTrue: [
			canvas text: 'Happiness level: '.
			canvas
				emphasis: [canvas text: message contents].
			canvas break
		].
	self renderActionsOn: canvas
]

{ #category : #actions }
SVGXSmiley >> resetEyes [
	
	message contents: 'Everything''s shiny'.
	leftEyeColor contents: Color white.
	rightEyeColor contents: Color white.
	happiness contents: 1.0
]

{ #category : #accessing }
SVGXSmiley >> states [
	
	| states |
	states := OrderedCollection new.
	states
		add: fillColor;
		add: message;
		add: leftEyeColor;
		add: rightEyeColor;
		add: happiness.
	^states
]

{ #category : #accessing }
SVGXSmiley >> strokeColor [

	^self fillColor alphaMixed: 0.3 with: Color black
]
