Class {
	#name : #SVGDrawingExample,
	#superclass : #WAComponent,
	#category : #'SeasideDynamicSVG-Examples'
}

{ #category : #accessing }
SVGDrawingExample class >> canBeRoot [
	^true
]

{ #category : #rendering }
SVGDrawingExample >> renderContentOn: html [
html script: 'var ToolManager;
	var renderer;
	var ToolManager2'.
self session addLoadScript: '
	// Create an SVG renderer
	renderer = new Graphic.SVGRenderer("whiteboard");
	
	if (ToolManager)
        ToolManager.setRenderer(renderer);
      else {
        ToolManager = new Graphic.ToolManager(renderer);
        ToolManager.setTool(new Graphic.SelectTool());   
      }
      

	// Create a rectangle with some attributes like color and bounds
	
	var rect = new Graphic.Rectangle(renderer);
	rect.setFill({r: 255, g: 0, b: 0, a: 128});
	rect.setStroke({r: 255, g: 255, b: 0, a: 128, w: 5});
	rect.setBounds(10, 20, 200, 300);
	rect.setRoundCorner(10, 10);
	renderer.add(rect);
	
	var group = new Graphic.Group(renderer); 
	var shape = new Graphic.Text(renderer); 
	shape.setTextValue("Hello World!");
	shape.setFont(10,"arial");
	shape.setStroke({r:0,g:0,b:0,w:0});
	shape.setFill({r:0,g:0,b:0});
	shape.setLocation(10, 40);

	var rect = new Graphic.Rectangle(renderer);
	rect.setFill({r: 0, g: 255, b: 0});
	rect.setStroke({r: 0, g: 0, b: 0, a: 128, w: 1});
	rect.setBounds(8, 10, 120, 120);
	group.add(rect);
	group.add(shape);
	renderer.add(group);
	
	var shape = new Graphic.Polyline(renderer);
    // Draw an arrow
    shape.addPoints([[0, 50],[100, 50],[100, 0],[150, 75], [100, 150], [100, 100],[0, 100]]);
  //  shape.setFill({r: 255, g: 0, b: 0, a: 128});
    shape.setStroke({r:0,g:0,b:0,a:128,w:2});
    shape.setBounds(0, 0, 80 , 80);
    renderer.add(shape);
	
	var fObj = Graphic.SVGRenderer.createNode("foreignObject");
	fObj.setAttribute("x",10);
	fObj.setAttribute("style","font-size:10px");
	fObj.setAttribute("y",10);
	fObj.setAttribute("width",120);
	fObj.setAttribute("height",20);
	fObj.appendChild(document.createTextNode("Test"));
	group.element.appendChild(fObj);
	 '.

html heading: 'SVG Drawing Test'.
html anchor onClick: ' ToolManager2 = new Graphic.ToolManager(renderer);
       ToolManager2.setTool(new Graphic.DrawingTool());'; with: 'Enable Drawing'.
html space.
html anchor onClick: 'if (ToolManager2) {ToolManager2.destroy()}'; with: 'Disable Drawing'.

html div id: 'whiteboard'; style: 'border:1px dotted #ccc; height:1000px;width:1000px'

]
