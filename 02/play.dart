import 'dart:io';
String line = 'Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red';
String? returnGameNum(String line){
    String? gameNum = "0";

    RegExp exp = RegExp(r'Game (\d+)');
    RegExpMatch? match = exp.firstMatch(line);
    gameNum = match![1];
    return gameNum;
}

void main() async {

    print (returnGameNum(line));

}