import Cocoa

var greeting = "The Chicago Blackhawks"

var players = [15:"Joey Anderson", 89:"Andreas Anthanasiou", 24:"Anders Bjork", 43:"Colin Blackwell", 17:"Jason Dickinson", 58:"Mackenzie Entwistle", 70:"Cole Guttman", 52:"Reese Johnson", 90:"Tyler Johnson", 14:"Boris Katchouk", 16:"Jujhar Khaira", 23:"Philipp Kurashev", 11:"Taylor Raddysh", 27:"Lukas Reichel", 19:"Jonathan Toews", 28:"Andreas Englund", 82:"Caleb Jones", 4:"Seth Jones", 51:"Ian Mitchell", 5:"Connor Murphy", 25:"Jarred Tinordi", 00:"Nikita Zaitsev", 34:"Petr Mrazek", 32:"Alex Stalock"]
for (playerCode, playerName) in players{
    print("\(playerCode): \(playerName)")
}
var age = ["25 Joey Anderson", "28 Andreas Anthanasiou", "27 Anders Bjork", "30 Colin Blackwell", "28 Jason Dickinson", "24 Mackenzie Entwistle", "24 Cole Guttman", "25 Reese Johnson", "33 Tyler Johnson", "25 Boris Katchouk", "29 Jujhar Khaira", "26 Philipp Kurashev", "25 Taylor Raddysh", "21 Lukas Reichel", "35 Jonathan Toews", "27 Andreas Englund", "28 Caleb Jones", "29 Seth Jones", "26 Ian Mitchell", "30 Connor Murphy", "31 Jarred Tinordi", "32 Nikita Zaitsev", "31 Petr Mrazek", "36 Alex Stalock"]
age.sort()
for item in age{
    print("Age: " + item)
}
var age2 = [25, 28, 27, 30, 28, 24, 24, 25, 33, 25, 29, 26, 25, 21, 35, 27, 28, 29, 26, 30, 31, 32, 31, 36]
var ageSum = age2.reduce(0, {x, y in
    x + y
})
var length = age2.count
var average = Double(ageSum) / Double(length)
print("The average age for the players on the Blackhawks team is: ", average)

var country = ["USA Joey Anderson", "CAN Andreas Anthanasiou", "USA Anders Bjork", "USA Colin Blackwell", "CAN Jason Dickinson", "CAN Mackenzie Entwistle", "USA Cole Guttman", "CAN Reese Johnson", "USA Tyler Johnson", "CAN Boris Katchouk", "CAN Jujhar Khaira", "CHE Philipp Kurashev", "CAN Taylor Raddysh", "DEU Lukas Reichel", "CAN Jonathan Toews", "SWE Andreas Englund", "USA Caleb Jones", "USA Seth Jones", "CAN Ian Mitchell", "USA Connor Murphy", "USA Jarred Tinordi", "RUS Nikita Zaitsev", "CZE Petr Mrazek", "USA Alex Stalock"]
country.sort()
for item in country{
    print("Country: " + item)
}

var month = [6, 8, 8, 3, 7, 7, 4, 7, 7, 6, 8, 10, 2, 5, 4, 1, 6, 10, 1, 3, 2, 10, 2, 7]
let mappedMonth = month.map {($0, 1)}
let counts = Dictionary(mappedMonth, uniquingKeysWith: +)
print(counts)

print("Most of the Blackhawks Players were born in the month of July")

var height = [6.0, 6.2, 6.0, 5.9, 6.2, 6.3, 5.9, 6.1, 5.8, 6.2, 6.4, 6.0, 6.3, 6.0, 6.2, 6.3, 6.1, 6.4, 5.11, 6.4, 6.6, 6.2, 6.2, 5.11]
var heightSum = height.reduce(0, {a, b in
    a + b
})
var length2 = height.count
var average2 = Double(heightSum)/Double(length2)
print("The average height of the players on the Blackhawks Team is: ", average2)




