import Cocoa

var greeting = "This program will be used as a calculator."
var functions = "1. Add\n2. Subtract\n3. Multiply\n4. Divide\n5. Percentages"
print(greeting)
print(functions)
var choice = "Please select a math function you would like to perform: "
print(choice)
choice = "5"
var number1 = 0
var number2 = 0

if choice == "1" {
    print("You have selected addition!")
    print("Please enter the first number: 29586")
    number1 = 29586
    //number1 = readLine()!.count.signum()
    print("Please enter the second number: 57930")
    number2 = 57930
    //number2 = readLine()!.count.signum()
    let total = (number1 + number2)
    print("\(number1) + \(number2) = \(total)")
}
if choice == "2" {
    print("You have selected subtraction!")
    print("Please enter the first number: 843577208")
    number1 = 843577208
    //number1 = readLine()!.count.signum()
    print("Please enter the second number: 457923")
    number2 = 457923
    //number2 = readLine()!.count.signum()
    let total = (number1 - number2)
    print("\(number1) - \(number2) = \(total)")
}
if choice == "3" {
    print("You have selected multiplicaton!")
    print("Please enter the first number: 450")
    number1 = 450
    //number1 = readLine()!.count.signum()
    print("Please enter the second number: 4")
    number2 = 4
    //number2 = readLine()!.count.signum()
    let total = (number1 * number2)
    print("\(number1) * \(number2) = \(total)")
}
if choice == "4" {
    print("You have selected division!")
    print("Please enter the first number: 900")
    number1 = 900
    //number1 = readLine()!.count.signum()
    print("Please enter the second number: 3")
    number2 = 3
    //number2 = readLine()!.count.signum()
    let total = (number1 / number2)
    print("\(number1) / \(number2) = \(total)")
}
if choice == "5" {
    print("You have selected percentages!")
    print("Please enter the first number: 2000")
    number1 = 2000
    //number1 = readLine()!.count.signum()
    print("Please enter the second number: 10")
    number2 = 10
    //number2 = readLine()!.count.signum()
    let total = (number1 % number2)
    print("\(number1) % \(number2) = \(total)")
}

