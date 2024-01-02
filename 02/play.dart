import 'dart:io';
String line = 'Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red';

int returnGameNum(String line){
    int gameNum = 0;

    RegExp exp = RegExp(r'Game (\d+)');
    RegExpMatch? match = exp.firstMatch(line);
    gameNum = int.parse(match![1] ?? '');
    return gameNum;
}

int returnLargestOfColor(String color, String line){
    int largest = 0;
    RegExp exp = RegExp("(\\d+) $color");
    Iterable<Match> matches = exp.allMatches(line);
    int largestNum = 0;
    // print(matches);
    // largest = int.parse(match![1] ?? '');
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

    print (returnLargestOfColor("blue",line));

}