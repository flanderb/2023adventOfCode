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

function returnGamePower(line){

  // 1-Get Game number
  gameNum = line.match(/Game (\d+)/)[1];
  red = getLargestOfColor("red" ,line);
  green = getLargestOfColor("green" ,line);
  blue = getLargestOfColor("blue" ,line);

  return red*green*blue;
  // return parseInt(gameNum);
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
      summed_number += returnGamePower(line);
      // console.log(returnGameNumIfPossible(line));
      // console.log(isGamepossible(line));

    };
    console.log(summed_number);
}

processLineByLine("02input.txt");

