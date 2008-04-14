Class {
	#name : #SVGFixActiveXActivationLibrary,
	#superclass : #WAFileLibrary,
	#category : #'SeasideDynamicSVG-Core-Base'
}

{ #category : #accessing }
SVGFixActiveXActivationLibrary >> iefixJs [
	" workaround for ActiveX / IE / Eolas control activation madness"
^ '
objects = document.getElementsByTagName("object");
for (var i = 0; i < objects.length; i++)
{
objects[i].outerHTML = objects[i].outerHTML;
}'
]

{ #category : #accessing }
SVGFixActiveXActivationLibrary >> selectorsToInclude [

	^ #(iefixJs)
]
