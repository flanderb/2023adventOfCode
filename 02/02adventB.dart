import 'dart:io';

int returnGameNum(String line){
    String? gameNum = "0";

    RegExp exp = RegExp(r'Game (\d+)');
    RegExpMatch? match = exp.firstMatch(line);
    gameNum = int.tryParse(match![1] ?? '')
    return gameNum;
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