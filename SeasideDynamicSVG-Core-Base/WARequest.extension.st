Extension { #name : #WARequest }

{ #category : #'*SeasideDynamicSVG-Core-Base' }
WARequest >> svgRequiresIEWorkarounds [
	" unfortunately, Microsoft doesn''t support SVG, and the Adobe SVG plugin requires some special tweaks "
	"copied from Seaside 2.9 <=  isInternetExplorer in WAFormTag"

	| userAgent |
	userAgent := self userAgent.
	^userAgent notNil
		and: [ (userAgent includesSubString: 'MSIE') and: [ (userAgent includesSubString: 'Opera') not ] ].

]
