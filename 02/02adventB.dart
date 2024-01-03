import 'dart:io';


int returnGameNum(String line){
    int gameNum = 0;

    RegExp exp = RegExp(r'Game (\d+)');
    RegExpMatch? match = exp.firstMatch(line);
    gameNum = int.parse(match![1] ?? '');
    return gameNum;
}

int returnLargestOfColor(String color, String line){

    RegExp exp = RegExp("(\\d+) $color");
    Iterable<Match> matches = exp.allMatches(line);
    int largestNum = 0;

    for (final Match m in matches) {
        int currentNum = int.parse(m[1] ?? '');
        if (currentNum > largestNum){
            largestNum = currentNum;
        }
    }
    return largestNum;
}

int returnGamePower(String line){

    int gameNum = returnGameNum(line);

    int red = returnLargestOfColor("red", line);

    int green = returnLargestOfColor("green", line);

    int blue = returnLargestOfColor("blue", line);

    return red * green * blue;
}

void main() async {
  var fileName = '02input.txt';
  int total = 0;

  var myFile = new File(fileName);
  var lines = await myFile.readAsLines();

  lines.forEach((line) {
    total += returnGamePower(line);
  });
  print(total);
}