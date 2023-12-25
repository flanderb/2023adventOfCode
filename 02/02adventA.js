const fs = require('fs');
const readline = require('readline');

totalRed = 12;
totalGreen = 13;
totalBlue = 14;

function isGamepossible(line){
  // 1-Get Game number
  // 2-Get largest red
  // 3-Get largest green
  // 4-get largest blue
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

    };
    // console.log(summed_number)
}

processLineByLine("input.txt");

