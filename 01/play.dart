import 'dart:io';

String getFirstNumber(String line){
    int indexOfFirstNum;

    indexOfFirstNum = line.indexOf(RegExp(r'\d'));
    return line[indexOfFirstNum];
}

void main() async {

    String test = "a6b2c3d4e5f";

    print(getFirstNumber(test));

}