Class {
	#name : #SVGExampleSmiley,
	#superclass : #SVGEmbeddedDocumentComponent,
	#instVars : [
		'fillColor',
		'message',
		'leftEyeColor',
		'rightEyeColor',
		'happiness',
		'embedSelector'
	],
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #actions }
SVGExampleSmiley >> beGreen [
	
	fillColor contents: 'rgb(64,255,64)'.
	self resetEyes.
	message contents: 'It''s not easy to be green'
]

{ #category : #actions }
SVGExampleSmiley >> beRed [
	
	fillColor contents: 'rgb(255,64,64)'.
	self resetEyes
]

{ #category : #actions }
SVGExampleSmiley >> beYellow [
	
	fillColor contents: 'rgb(255,255,0)'.
	self resetEyes
]

{ #category : #drawing }
SVGExampleSmiley >> drawContentOn: svg [ 
	| center radius eyeRadius eyeDistance eyeliner |
	svg rectangle
		width: self width ;
		height: self height ;
		fill: Color lightOrange ;
		stroke: Color black ;
		strokeWidth: 3.	
		
	" face "
	center := (self width / 2) @ (self height / 2).
	radius := (self width min: self height) / 2.2.
	self 
		drawFaceOn: svg
		center: center
		radius: radius.

	" eyes "
	eyeRadius := radius / 6.
	eyeDistance := radius / 3.
	eyeliner := Color black.
	self 
		drawLeftEyeOn: svg
		center: center
		distance: eyeDistance
		radius: eyeRadius
		eyeliner: eyeliner.
	self 
		drawRightEyeOn: svg
		center: center
		distance: eyeDistance
		radius: eyeRadius
		eyeliner: eyeliner.	
			
	" mouth "
	self 
		drawMouthOn: svg
		faceCenter: center
		faceRadius: radius
]

{ #category : #drawing }
SVGExampleSmiley >> drawFaceOn: svg center: center radius: radius [
	
	(svg circle)
		center: center;
		radius: radius;
		fill: self fillColor;
		stroke: Color black;
		strokeWidth: 3
]

{ #category : #drawing }
SVGExampleSmiley >> drawHappyMouthOn: svg faceCenter: center faceRadius: radius [
	
	| mouthXRadius path mouthWidth outerStart outerStop innerStart innerStop |
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
		radiusX: (innerStop x - innerStart x) // 2
		radiusY: radius - innerStart x
		rotation: 0
		large: false
		sweep: false.
	path lineTo: outerStop.
	path
		arcTo: outerStart
		radiusX: (outerStop x - outerStart x) // 2
		radiusY: radius - outerStart x
		rotation: 0
		large: false
		sweep: true.
	path closePath.
	path
		fill: Color white;
		stroke: Color black;
		strokeWidth: 2
]

{ #category : #drawing }
SVGExampleSmiley >> drawLeftEyeOn: svg center: center distance: eyeDistance radius: eyeRadius eyeliner: eyeliner [ 

	svg anchor
		callback: [self hitLeftEye];
		target: '_top';
		with: [svg circle center: center - (eyeDistance @ eyeDistance);
				 radius: eyeRadius;
				 fill: leftEyeColor contents;
				 stroke: eyeliner;
				 strokeWidth: 2]
]

{ #category : #drawing }
SVGExampleSmiley >> drawMouthOn: svg faceCenter: center faceRadius: radius [ 

	svg anchor
		callback: [self hitMouth];
		target: '_top';
		with: [happiness contents > 0.5
				ifTrue: [self
						drawHappyMouthOn: svg
						faceCenter: center
						faceRadius: radius]
				ifFalse: [self
						drawUnhappyMouthOn: svg
						faceCenter: center
						faceRadius: radius]]
]

{ #category : #drawing }
SVGExampleSmiley >> drawRightEyeOn: svg center: center distance: eyeDistance radius: eyeRadius eyeliner: eyeliner [ 

	svg anchor
		callback: [self hitRightEye];
		target: '_top';
		with: [svg circle center: center + (eyeDistance @ eyeDistance negated);
				 radius: eyeRadius;
				 fill: rightEyeColor contents;
				 stroke: eyeliner;
				 strokeWidth: 2]
]

{ #category : #drawing }
SVGExampleSmiley >> drawSVGContentOn: svg [ 
	| center radius eyeRadius eyeDistance eyeliner |
	svg rectangle
		width: self width ;
		height: self height ;
		fill: Color lightOrange ;
		stroke: Color black ;
		strokeWidth: 3.

	" face "
	center := self width @ self height / 2.
	radius := (self width min: self height) / 2.2.
	self 
		drawFaceOn: svg
		center: center
		radius: radius.

	" eyes "
	eyeRadius := radius / 6.
	eyeDistance := radius / 3.
	eyeliner := Color black.
	self 
		drawLeftEyeOn: svg
		center: center
		distance: eyeDistance
		radius: eyeRadius
		eyeliner: eyeliner.
	self 
		drawRightEyeOn: svg
		center: center
		distance: eyeDistance
		radius: eyeRadius
		eyeliner: eyeliner.

	" mouth "
	self 
		drawMouthOn: svg
		faceCenter: center
		faceRadius: radius
]

{ #category : #drawing }
SVGExampleSmiley >> drawUnhappyMouthOn: svg faceCenter: center faceRadius: radius [
	
	| mouthXRadius path mouthWidth outerStart outerStop innerStart innerStop yOffset |
	mouthXRadius := radius * 0.5.
	mouthWidth := radius * 0.05.
	yOffset := mouthXRadius.
	path := svg path.
	outerStart := center - (mouthXRadius @ 0) + (0 @ yOffset).
	outerStop := center + (mouthXRadius @ 0) + (0 @ yOffset).
	innerStart := outerStart + (mouthWidth @ mouthWidth).
	innerStop := outerStop + (mouthWidth negated @ mouthWidth).
	path moveTo: outerStart.
	path lineTo: innerStart.
	path
		arcTo: innerStop
		radiusX: (innerStop x - innerStart x) / 2
		radiusY: radius - innerStart x
		rotation: 0
		large: false
		sweep: true.
	path lineTo: outerStop.
	path
		arcTo: outerStart
		radiusX: (outerStop x - outerStart x) / 2
		radiusY: radius - outerStart x
		rotation: 0
		large: false
		sweep: false.
	path closePath.
	path
		fill: Color white;
		stroke: Color black;
		strokeWidth: 2
]

{ #category : #rendering }
SVGExampleSmiley >> embedSVGIn: canvas [
	
	self perform: embedSelector with: canvas	
]

{ #category : #accessing }
SVGExampleSmiley >> fillColor [
	
	^fillColor contents
]

{ #category : #actions }
SVGExampleSmiley >> hitLeftEye [
	
	message contents: 'Ouch, you hit my left eye!'.
	leftEyeColor contents: 'rgb(64,0,255)'.
	happiness contents: 0
]

{ #category : #actions }
SVGExampleSmiley >> hitMouth [
	
	self resetEyes.
	message contents: 'thanks for feeding me!'
]

{ #category : #actions }
SVGExampleSmiley >> hitRightEye [
	
	message contents: 'Ouch, you hit my right eye!'.
	rightEyeColor contents: 'rgb(80,20,255)'.
	happiness contents: 0
]

{ #category : #initialization }
SVGExampleSmiley >> initialize [
	
	super initialize.
	fillColor := WAValueHolder new.
	leftEyeColor := WAValueHolder new.
	rightEyeColor := WAValueHolder new.
	message := WAValueHolder new.
	happiness := WAValueHolder with: 1.0.
	embedSelector := #renderEmbedOn:.
	self beYellow
]

{ #category : #rendering }
SVGExampleSmiley >> renderContentOn: canvas [
	
	canvas text: 'Embed method: '.
	self renderEmbedSelector: #renderEmbedOn: text: '<embed>' on: canvas .
	canvas space.
	self renderEmbedSelector: #renderObjectOn: text: '<object>' on: canvas .
	canvas space.
	self renderEmbedSelector: #renderIFrameOn: text: '<iframe>' on: canvas .
	(canvas div)
		style: 'padding: 1em';
		with: [self embedSVGIn: canvas].
	message contents notNil
		ifTrue:
			[canvas text: 'Happiness level: '.
			canvas emphasis: [canvas text: message contents]].
	canvas break.
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
SVGExampleSmiley >> renderEmbedSelector: aSelector text: text on: canvas [ 

	canvas anchor
		callback: [embedSelector := aSelector];
		with: [aSelector = embedSelector
				ifTrue: [canvas
						emphasis: [canvas text: text]]
				ifFalse: [canvas text: text]]
]

{ #category : #actions }
SVGExampleSmiley >> resetEyes [
	
	message contents: 'Everything''s shiny'.
	leftEyeColor contents: 'rgb(255,255,255)'.
	rightEyeColor contents: 'rgb(255,255,255)'.
	happiness contents: 1.0
]

{ #category : #accessing }
SVGExampleSmiley >> states [
	
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
