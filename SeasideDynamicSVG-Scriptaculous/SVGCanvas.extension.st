Extension { #name : #SVGCanvas }

{ #category : #'*SeasideDynamicSVG-Scriptaculous' }
SVGCanvas >> evaluator [
	^ SUEvaluator on: self
]

{ #category : #'*SeasideDynamicSVG-Scriptaculous' }
SVGCanvas >> periodical [
	^ SUPeriodical on: self
]

{ #category : #'*SeasideDynamicSVG-Scriptaculous' }
SVGCanvas >> request [
	^ SURequest on: self
]

{ #category : #'*SeasideDynamicSVG-Scriptaculous' }
SVGCanvas >> updater [
	^ SUUpdater on: self
]
