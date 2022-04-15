const scale = 50
let north = 0; // x
let east = 500; // y

function setup() {
  createCanvas(500, 500);
  background('rgba(0,255,0, 0.25)');
  for (let i = 0; i < 501; i += scale) {
    line(i, 0, i, 500);
    line(0, i, 500, i);
  }
}

function reScaleData(data){
  rescale = []
  for(let element of data){
    if (isNaN(element)){
      rescale.push(element);
    }else {
      rescale.push(element*scale);
    }
    console.log(rescale);
  return rescale
  }
}

const blocksAway = function (directions) {
    directions = reScaleData(directions)
    console.log(directions);
    strokeWeight(4)
    stroke("red");
    let facingDirection = "";
    if (directions[0] === "right") {
      north = north + directions[1];
      facingDirection = "north";

      line(0, east, north, east);
    } else if (directions[0] === "left") {
      east = east - directions[1];
      facingDirection = "east";
      line(north, east, north, 500);
    }

    for (let i = 2; i < directions.length; i += 2) {
      if (facingDirection === "north") {
        if (directions[i] === "right") {
          east = east + directions[i + 1];
          facingDirection = "west";
          line(north, east - directions[i + 1], north, east);
          continue;
        } else if (directions[i] === "left") {
          east = east - directions[i + 1];
          facingDirection = "east";
          line(north, east + directions[i + 1], north, east);
          continue;
        }
      }
      if (facingDirection === "east") {
        if (directions[i] === "right") {
          north = north + directions[i + 1];
          facingDirection = "north";
          line(north - directions[i + 1], east, north, east);
          continue;
        } else if (directions[i] === "left") {
          north = north - directions[i + 1];
          facingDirection = "south";
          line(north + directions[i + 1], east, north, east);
          continue;
        }
      }
      if ((facingDirection = "south")) {
        if (directions[i] === "right") {
          east = east - directions[i + 1];
          facingDirection = "east";
          line(north, east + directions[i + 1], north, east);
          continue;
        } else if (directions[i] === "left") {
          east = east + directions[i + 1];
          facingDirection = "west";
          line(north, east - directions[i + 1], north, east);
          continue;
        }
      }
      if (facingDirection === "west") {
        if (directions[i] === "right") {
          north = north - directions[i + 1];
          facingDirection = "south";
          line(north + directions[i + 1], east, north, east);
          continue;
        } else if (directions[i] === "left") {
          north = north + directions[i + 1];
          facingDirection = "north";
          line(north - directions[i + 1], east, north, east);
          continue;
        }
      }
    }
    stroke(0);
    ellipse(north, east, 10, 10);
  };
  // change single digit values


blocksAway(["left", 4, "right", 4, "right", 4, "right", 4]);