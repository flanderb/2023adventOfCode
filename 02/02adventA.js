const fs = require('fs');
const readline = require('readline');

totalRed = 12;
totalGreen = 13;
totalBlue = 14;

function getGameNum(line){
  return gameNum = line.match(/Game (\d+)/)[1];
}

function getLargestOfColor(color ,line){
  let re = new RegExp(`(\\d+)(?= ${color})`,'g');
  redNum = line.match(re);
  arrRedNum =  redNum.map((x) => parseInt(x));
  return Math.max.apply(0,arrRedNum)
}

function returnGameNumIfPossible(line){
  maxRed = 12;
  maxGreen = 13;
  maxBlue = 14;
  // 1-Get Game number
  gameNum = line.match(/Game (\d+)/)[1];
  red = getLargestOfColor("red" ,line);
  if (red > maxRed) {
    return 0;
  }
  green = getLargestOfColor("green" ,line);
  if (green > maxGreen) {
    return 0;
  }
  blue = getLargestOfColor("blue" ,line);
  if (blue > maxBlue) {
    return 0;
  }
  return parseInt(gameNum);
}

async function processLineByLine(text_file) {
    const fileStream = fs.createReadStream(text_file);
  
    const rl = readline.createInterface({
      input: fileStream,
      crlfDelay: Infinity
    });
    // Note: we use the crlfDelay option to recognize all instances of CR LF
    // ('\r\n') in input.txt as a single line break.
    summed_number = 0
    for await (const line of rl) {
      summed_number += returnGameNumIfPossible(line);
      // console.log(returnGameNumIfPossible(line));
      // console.log(isGamepossible(line));

    };
    console.log(summed_number);
}

processLineByLine("02input.txt");

