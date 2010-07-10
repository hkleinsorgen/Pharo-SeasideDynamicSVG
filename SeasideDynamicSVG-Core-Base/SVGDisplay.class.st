Class {
	#name : #SVGDisplay,
	#superclass : #SVGEnumeration,
	#category : #'SeasideDynamicSVG-Core-Enumerations'
}

{ #category : #accessing }
SVGDisplay class >> block [
	^ 'block'
]

{ #category : #accessing }
SVGDisplay class >> compact [
	^ 'compact'
]

{ #category : #developers }
SVGDisplay class >> enumString [

	"self compileSelectors"
	^ ' 	inline | block | list-item |
run-in | compact | marker |
table | inline-table | table-row-group | table-header-group |
table-footer-group | table-row | table-column-group | table-column |
table-cell | table-caption | none | inherit'
]

{ #category : #accessing }
SVGDisplay class >> inline [
	^ 'inline'
]

{ #category : #accessing }
SVGDisplay class >> listItem [
	^ 'list-item'
]

{ #category : #accessing }
SVGDisplay class >> marker [
	^ 'marker'
]

{ #category : #accessing }
SVGDisplay class >> none [
	^ 'none'
]

{ #category : #accessing }
SVGDisplay class >> runIn [
	^ 'run-in'
]

{ #category : #accessing }
SVGDisplay class >> table [
	^ 'table'
]

{ #category : #accessing }
SVGDisplay class >> tableCaption [
	^ 'table-caption'
]

{ #category : #accessing }
SVGDisplay class >> tableCell [
	^ 'table-cell'
]

{ #category : #accessing }
SVGDisplay class >> tableColumn [
	^ 'table-column'
]

{ #category : #accessing }
SVGDisplay class >> tableColumnGroup [
	^ 'table-column-group'
]

{ #category : #accessing }
SVGDisplay class >> tableFooterGroup [
	^ 'table-footer-group'
]

{ #category : #accessing }
SVGDisplay class >> tableHeaderGroup [
	^ 'table-header-group'
]

{ #category : #accessing }
SVGDisplay class >> tableRow [
	^ 'table-row'
]

{ #category : #accessing }
SVGDisplay class >> tableRowGroup [
	^ 'table-row-group'
]
