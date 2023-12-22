function getFirstNumber(text_line){
    return text_line[text_line.search(/\d/)];
}

function reverseString(text_line){
    aString = text_line.split('')
    aReversed = aString.reverse()
    sReverse = aReversed.join('')
    return sReverse
}

test = "Thi6 is 5 stri7ng";
firstNumber = getFirstNumber(test)
secondNumber = getFirstNumber(reverseString(test))
fullNumber = firstNumber + secondNumber

number1 = 5
number2 = 6



// console.log(test)
// console.log(firstNumber)
// console.log(secondNumber)
// console.log(fullNumber)
console.log(number1)
console.log(number2)
console.log(number1 + number2)