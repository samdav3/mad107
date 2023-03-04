import Cocoa

var greeting = "Blackhawk Program Receipe"

var players = []//Dictionary for players

var age = []//array for players ages
age.sort()
for item in age{
    //iteraring through the sorted array of players ages
}
var age2 = []//array of integers of players ages
var ageSum = age2.reduce(0, {
    //using reduce to find the total of all ages for the players
})
var length = age2.count // the total number of ages in the array
var average = Double(ageSum) / Double(length) //dividing the total sum of ages by the number of entries to find the average age
print() //print out average age of players

var country = [] // array for players and the country
country.sort() // sorting array of countries
for item in country{
    //iterating through the array of sorted countries
}

var month = []//array of integers for the month the players were born in
let mappedMonth = month.map  //convert the array into a map
let counts = Dictionary(mappedMonth, uniquingKeysWith: +) // convert the map to a dictionary and use the month as the key + how many times the month appears in the map
print(counts) // print out the months in the dictionary format to find out which one appears most

print()//print out which month appears the most

var height = []//array for the height of the players
var heightSum = height.reduce(0, {
    //using reduce to find the total of the height of the players
})
var length2 = height.count // finding the total number of entries in the array
var average2 = Double(heightSum)/Double(length2) //dividing the sum by the total to get the average
print() // print out the average height for the players 
