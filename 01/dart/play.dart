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

String getFirstNumber(String line){
    int indexOfFirstNum;

    indexOfFirstNum = line.indexOf(RegExp(r'\d'));
    return line[indexOfFirstNum];
}

void main() async {

    String test = "eightwothree";
    print(test);
    print(nameToNum(test));

}