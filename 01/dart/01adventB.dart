import 'dart:io';

String nameToNum(String line){
    String tempString = line;
    Map<String, String> digits = {
        "zero": "z0o",
        "one": "o1e",
        "two": "t2o",
        "three":"t3e",
        "four": "f4r",
        "five": "f5e",
        "six": "s6x",
        "seven": "s7n",
        "eight": "e8t",
        "nine": "n9e"
    };
    digits.forEach((k, v) {
        tempString = tempString.replaceAll(k,v);
    });
    return tempString;
}

int combineFirstAndLastNumbers(String line){
  String firstNum;
  String lastNum;
  String lineNum;

  firstNum = line[line.indexOf(RegExp(r'\d'))];
  lastNum = line[line.lastIndexOf(RegExp(r'\d'))];
  lineNum = firstNum + lastNum;
  return int.parse(lineNum);
}

void main() async {
  var fileName = '../input.txt';
  int total = 0;

  var myFile = new File(fileName);
  var lines = await myFile.readAsLines();

  lines.forEach((line) {
    // String tempLine = line;
    String tempLine = nameToNum(line);
    total += combineFirstAndLastNumbers(tempLine);
  });
  print(total);
}