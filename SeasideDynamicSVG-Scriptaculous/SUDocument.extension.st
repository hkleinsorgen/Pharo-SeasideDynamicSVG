Extension { #name : #SUDocument }

{ #category : #'*SeasideDynamicSVG-Scriptaculous' }
SUDocument >> allTagsRequireSVGNameSpace [
	" required due to the way Element.update was patched "
	
	^ true
]
