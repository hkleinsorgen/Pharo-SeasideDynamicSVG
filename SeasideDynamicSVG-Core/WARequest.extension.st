Extension { #name : #WARequest }

{ #category : #'*SeasideDynamicSVG-Core' }
WARequest >> svgRequiresIEWorkarounds [
	" unfortunately, Microsoft doesn''t support SVG, and the Adobe SVG plugin requires some special tweaks "

	| agent regex |
	agent := self userAgent.
	agent notNil
		ifTrue: [
			regex := '.*MSIE (\d+)(.\d+).*' asRegex.
			regex matchesIn: agent do: [ : versionString |
				regex subexpressionCount >= 2
					ifTrue: [
						(regex subexpression: 2) asInteger <= 7
							ifTrue: [ ^ true ]
					].
			].
		].
	^ false
]
