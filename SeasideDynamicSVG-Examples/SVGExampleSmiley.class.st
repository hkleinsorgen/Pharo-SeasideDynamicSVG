Class {
	#name : #SVGExampleSmiley,
	#superclass : #SVGDrawableComponent,
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
	(svg rect)
		width: self width;
		height: self height;
		fill: 'rgb(220,220,220)';
		stroke: 'rgb(0,0,0)';
		strokeWidth: 3.	" face "
	center _ self width @ self height // 2.
	radius _ ((self width min: self height) / 2.2) rounded.
	self drawFaceOn: svg center: center radius: radius.	" eyes "
	eyeRadius _ (radius / 6) rounded.
	eyeDistance _ (radius / 3) rounded.
	eyeliner _ 'rgb(0,0,0)'.
	self drawLeftEyeOn: svg center: center distance: eyeDistance radius:
			eyeRadius eyeliner: eyeliner.
	self drawRightEyeOn: svg center: center distance: eyeDistance radius:
			eyeRadius eyeliner: eyeliner.	" mouth "
	self drawMouthOn: svg faceCenter: center faceRadius: radius
]

{ #category : #drawing }
SVGExampleSmiley >> drawFaceOn: svg center: center radius: radius [
	
	(svg circle)
		center: center;
		radius: radius;
		fill: self fillColor;
		stroke: 'rgb(0,0,0)';
		strokeWidth: 3
]

{ #category : #drawing }
SVGExampleSmiley >> drawHappyMouthOn: svg faceCenter: center faceRadius: radius [
	
	| mouthXRadius path mouthWidth outerStart outerStop innerStart innerStop |
	mouthXRadius _ (radius * 0.8) rounded.
	mouthWidth _ (radius * 0.2) rounded.
	path _ svg path.
	outerStart _ center - (mouthXRadius @ 0).
	outerStop _ center + (mouthXRadius @ 0).
	innerStart _ outerStart + (mouthWidth @ 0).
	innerStop _ outerStop - (mouthWidth @ 0).
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
		fill: 'rgb(255,255,255)';
		stroke: 'rgb(0,0,0)';
		strokeWidth: 2
]

{ #category : #drawing }
SVGExampleSmiley >> drawLeftEyeOn: svg center: center distance: eyeDistance radius: eyeRadius eyeliner: eyeliner [
	
	(svg anchor)
		callback: [self hitLeftEye];
		target: '_top';
		with:
				[(svg circle)
						center: center - (eyeDistance @ eyeDistance);
						radius: eyeRadius;
						fill: leftEyeColor contents;
						stroke: eyeliner;
						strokeWidth: 2]
]

{ #category : #drawing }
SVGExampleSmiley >> drawMouthOn: svg faceCenter: center faceRadius: radius [
	
	(svg anchor)
		callback: [self hitMouth];
		target: '_top';
		with:
				[happiness contents > 0.5
						ifTrue:
							[self drawHappyMouthOn: svg faceCenter: center faceRadius: radius]
						ifFalse:
							[self drawUnhappyMouthOn: svg faceCenter: center faceRadius: radius]]
]

{ #category : #drawing }
SVGExampleSmiley >> drawRightEyeOn: svg center: center distance: eyeDistance radius: eyeRadius eyeliner: eyeliner [
	
	(svg anchor)
		callback: [self hitRightEye];
		target: '_top';
		with:
				[(svg circle)
						center: center + (eyeDistance @ eyeDistance negated);
						radius: eyeRadius;
						fill: rightEyeColor contents;
						stroke: eyeliner;
						strokeWidth: 2]
]

{ #category : #drawing }
SVGExampleSmiley >> drawUnhappyMouthOn: svg faceCenter: center faceRadius: radius [
	
	| mouthXRadius path mouthWidth outerStart outerStop innerStart innerStop yOffset |
	mouthXRadius _ (radius * 0.5) rounded.
	mouthWidth _ (radius * 0.05) rounded.
	yOffset _ mouthXRadius.
	path _ svg path.
	outerStart _ center - (mouthXRadius @ 0) + (0 @ yOffset).
	outerStop _ center + (mouthXRadius @ 0) + (0 @ yOffset).
	innerStart _ outerStart + (mouthWidth @ mouthWidth).
	innerStop _ outerStop + (mouthWidth negated @ mouthWidth).
	path moveTo: outerStart.
	path lineTo: innerStart.
	path
		arcTo: innerStop
		radiusX: (innerStop x - innerStart x) // 2
		radiusY: radius - innerStart x
		rotation: 0
		large: false
		sweep: true.
	path lineTo: outerStop.
	path
		arcTo: outerStart
		radiusX: (outerStop x - outerStart x) // 2
		radiusY: radius - outerStart x
		rotation: 0
		large: false
		sweep: false.
	path closePath.
	path
		fill: 'rgb(255,255,255)';
		stroke: 'rgb(0,0,0)';
		strokeWidth: 2
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
	self beYellow
]

{ #category : #rendering }
SVGExampleSmiley >> renderContentOn: canvas [
	
	(canvas div)
		style: 'padding: 1em';
		with: [self renderExternalSVGOn: canvas].
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
