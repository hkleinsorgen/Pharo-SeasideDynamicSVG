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
	rect.setBounds(210, 20, 200, 300);
	rect.setRoundCorner(10, 10);
	renderer.add(rect);
	
	var group = new Graphic.Group(renderer); 
	var shape = new Graphic.Text(renderer); 
	shape.setTextValue("Hello World! Verdana Super");
	shape.setFont(10,"Verdana");
	shape.setStroke({r:0,g:0,b:0,w:0.1,a:1});
	shape.setFill({r:0,g:0,b:0});
	shape.setLocation(10, 40);
	group.add(shape);
	var shape = new Graphic.Text(renderer); 
	shape.setTextValue("Hello World! ARIAL Super");
	shape.setFont(10,"Arial");
	shape.setStroke({r:0,g:0,b:0,w:0.1,a:1});
	shape.setFill({r:0,g:0,b:0});
	shape.setLocation(10, 60);
	group.add(shape);
	var shape = new Graphic.Text(renderer); 
	shape.setTextValue("Hello World! San serif Child");
	shape.setFont(10,"san serif");
	shape.setStroke({r:0,g:0,b:0,w:0.1,a:1});
	shape.setFill({r:0,g:0,b:0});
	shape.setLocation(10, 80);
	group.add(shape);
	
	var polyline = new Graphic.Polyline(renderer);
    // Draw an arrow
    polyline.addPoints([[0, 50],[100, 50],[100, 0],[150, 75], [100, 150], [100, 100],[0, 100]]);
  //  polyline.setFill({r: 255, g: 0, b: 0, a: 128});
    polyline.setStroke({r:0,g:0,b:0,a:128,w:2});
    polyline.setBounds(100, 200, 80 , 80);
    renderer.add(polyline);
	
	var rect = new Graphic.Rectangle(renderer);
	rect.setFill({r: 0, g: 255, b: 0});
	rect.setStroke({r: 0, g: 0, b: 0, a: 128, w: 1});
	rect.setBounds(180, 10, 40, 60);
	
	rect.addChild(shape);
	rect.addChild(polyline);
	
	group.add(rect);
	
	renderer.add(group);
	

	
//	var shape = new Graphic.NativeText(renderer);
//	shape.setBounds(50, 200, 180,20);
//	shape.setTextValue("Hello World my Native Text");
//	shape.setTextStyle("font-familiy:verdana;font-size:10px;cursor:default");
//	renderer.add(shape);
	 '.

html heading: 'SVG Drawing Test'.
html anchor onClick: ' ToolManager2 = new Graphic.ToolManager(renderer);
       ToolManager2.setTool(new Graphic.DrawingTool());'; with: 'Enable Drawing'.
html space.
html anchor onClick: 'if (ToolManager2) {ToolManager2.destroy()}'; with: 'Disable Drawing'.

html div id: 'whiteboard'; style: 'border:1px dotted #ccc; height:1000px;width:1000px'

]
