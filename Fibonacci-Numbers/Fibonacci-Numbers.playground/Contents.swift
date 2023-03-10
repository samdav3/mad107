import Cocoa

var greeting = "Fibonacci Numbers"

var num1 = 0
var num2 = 1
var result = 0
func fibionacci(num: Int) -> Int{
    for _ in 0..<num{
        result = num1
        num1 = num2
        num2 = result + num1
    }
    return num2
}
func returnValues(){
    let value = 1000
    for x in 0...value{
        let results = fibionacci(num: x)
        print(results)
    }
}
returnValues()


