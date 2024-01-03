function replaceStringWithNumbers(text_line) {
    tempString = text_line
    const numbers = {
        zero: "z0o",
        one: "o1e",
        two: "t2o",
        three:"t3e",
        four: "f4r",
        five: "f5e",
        six: "s6x",
        seven: "s7n",
        eight: "e8t",
        nine: "n9e"
    }

    Object.keys(numbers).forEach (key => {
        // console.log(key, numbers[key]);
        tempString = tempString.replaceAll(key, numbers[key])
    })

    return tempString
}

test = "eightwothree";




console.log(test)
// console.log(numbers.one)
console.log(replaceStringWithNumbers(test))