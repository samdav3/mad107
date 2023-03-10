import Cocoa

var greeting = "Fibonacci Numbers"

var num1 = 0 //0th number in fibioncci numbers
var num2 = 1 //1st number in fibioncci numbers
var result = 0 //storing the result
func fibionacci(num: Int) -> Int{ //function accepting one parameter as an integer
    for _ in 0..<num{ // adding the two previous numbers to find the total of those numbers
        result = num1 // result is assigned to num1 to start the sequence
        num1 = num2   // num1 is assigned to num2 becuase num1 is equal to 0
        num2 = result + num1 // num2 is assigned to the result + num1 this is the process of
                             // adding to two previous numbers together
    }
    return num2 // returning the total value of the two numbers
}
func returnValues(){
    let value = 1000 // value assigned to 1000 for how far the sequence will go
    for x in 0...value{ // iterating over each number from 0-1000
        let results = fibionacci(num: x) // the results of the fibionacci function accepting x as the                                  // only parameter
        print(results) // printing results
    }
}
returnValues() // calling the function
