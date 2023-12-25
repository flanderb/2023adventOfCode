const fs = require('fs');
const readline = require('readline');

function getFirstNumber(text_line){
  return text_line[text_line.search(/\d/)];
}

function reverseString(text_line){
  aString = text_line.split('')
  aReversed = aString.reverse()
  sReverse = aReversed.join('')
  return sReverse
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
      first_number = getFirstNumber(line)
      second_number = getFirstNumber(reverseString(line))
      full_number_as_string = first_number + second_number
      full_number = parseInt(full_number_as_string)
      summed_number += full_number

      // Each line in input.txt will be successively available here as `line`.
      // console.log(`First number from line: ${getFirstNumber(line)}`);
      // console.log(`Second number from line: ${getFirstNumber(reverseString(line))}`)
      // console.log(`Combined: ${full_number_as_string}`)
      // console.log(
      
      `Combined and Inted: ${full_number}`)

    }
    console.log(summed_number)
}

processLineByLine("input.txt");

