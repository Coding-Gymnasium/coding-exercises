// @ts-check

/**
 * Implement the classes etc. that are needed to solve the
 * exercise in this file. Do not forget to export the entities
 * you defined so they are available for the tests.
 */

// ---- Size
export function Size(width = 80, height = 60) {
  this.width = width;
  this.height = height;
}

Size.prototype.resize = function (width, height) {
  this.width = width;
  this.height = height;
};

//--- Position

export function Position(x = 0, y = 0) {
  this.x = x;
  this.y = y;
}

Position.prototype.move = function (x, y) {
  this.x = x;
  this.y = y;
};

//--- ProgramWindow Class

export class ProgramWindow {
  constructor() {
    this.size = new Size();
    this.position = new Position();
    this.screenSize = {
      width: 800,
      height: 600,
    };
  }

  resize(newSize) {
    let diffWidth = this.screenSize.width - this.position.x;
    let diffHeight = this.screenSize.height - this.position.y;

    newSize.width <= 0 || newSize.height <= 0
      ? (this.size = new Size(1, 1))
      : newSize.width > diffWidth
      ? (this.size = new Size(diffWidth, diffHeight))
      : (this.size = new Size(newSize.width, newSize.height));
  }

  move(newPosition) {
    let diffX = this.screenSize.width - this.size.width;
    let diffY = this.screenSize.height - this.size.height;

    newPosition.x <= 0 || newPosition.y <= 0
      ? (this.position = new Position(0, 0))
      : newPosition.x > diffX
      ? (this.position = new Position(diffX, diffY))
      : (this.position = new Position(newPosition.x, newPosition.y));
  }
}
//--- ChangeWindow
// The window should get a width of 400, a height of 300 and be positioned at x = 100, y = 150.
export function changeWindow(programWindow) {
  let newSize = new Size(400, 300);
  let newPosition = new Position(100, 150);
  programWindow.resize(newSize);
  programWindow.move(newPosition);

  return programWindow;
}
