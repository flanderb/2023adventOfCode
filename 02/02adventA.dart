import 'dart:io';

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
  var fileName = '02test.txt';
  int total = 0;

  var myFile = new File(fileName);
  var lines = await myFile.readAsLines();

  lines.forEach((line) {
    total += combineFirstAndLastNumbers(line);
  });
  print(total);
}