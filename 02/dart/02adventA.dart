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

int returnGameNumIfPossible(String line){
    int maxRed = 12;
    int maxGreen = 13;
    int maxBlue = 14;

    int gameNum = returnGameNum(line);

    int red = returnLargestOfColor("red", line);
    if (red > maxRed) {
        return 0;
    }
    int green = returnLargestOfColor("green", line);
    if (green > maxGreen) {
        return 0;
    }
    int blue = returnLargestOfColor("blue", line);
    if (blue > maxBlue) {
        return 0;
    }

    return gameNum;
}

void main() async {
  var fileName = '../02input.txt';
  int total = 0;

  var myFile = new File(fileName);
  var lines = await myFile.readAsLines();

  lines.forEach((line) {
    int lineNum = returnGameNum(line);
    total += returnGameNumIfPossible(line);
  });
  print(total);
}