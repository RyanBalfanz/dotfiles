// Create Operations
var pushRight = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:screenSizeX/3"
});

var pushLeft = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:screenSizeX/3"
});

var pushTop = slate.operation("push", {
  "direction" : "top",
  "style" : "bar-resize:screenSizeY/2"
});

var fullscreen = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});

var grid = slate.operation("grid", {
  "grids" : {
    "1680x1050" : {
      "width" : 16,
      "height" : 9
    },
    "1050x1680" : {
      "width" : 9,
      "height" : 16
    }
  },
  "padding" : 5
});

slate.bind("f:ctrl", fullscreen);
slate.bind("g:ctrl", grid);

var cornerTopLeft = slate.operation("corner", {
  "direction" : "top-left",
  "width" : "screenSizeX/2",
  "height" : "screenSizeY/2"
});
var cornerTopRight = cornerTopLeft.dup({ "direction" : "top-right" });
var cornerBottomLeft = cornerTopLeft.dup({ "direction" : "bottom-left" });
var cornerBottomRight = cornerTopLeft.dup({ "direction" : "bottom-right" });
var chain = slate.operation("chain", {
  "operations" : [
    cornerTopLeft,
    cornerTopRight,
    cornerBottomRight,
    cornerBottomLeft
  ]
});
slate.bind("1:ctrl", chain);
