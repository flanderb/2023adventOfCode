// const { get } = require("http");

line = "Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red";

function getLargestOfColor(color ,line){

    let re = new RegExp(`(\\d+)(?= ${color})`,'g');

    redNum = line.match(re);

    arrRedNum =  redNum.map((x) => parseInt(x));
    return Math.max.apply(0,arrRedNum)
}

  console.log(getLargestOfColor("red", line));
  console.log(getLargestOfColor("green", line));
  console.log(getLargestOfColor("blue", line));
