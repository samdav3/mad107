import Cocoa

var greeting = "Clock App Receipe"

var timeLabel = "" //String
let time = Timer //timer to count every second and add to timeLabel
let date = Date() // for the current time
let dateFormatter = DateFormatter() // so we can format the time
dateFormatter.dateFormat = "hh:MM:ss a" // how to format the time
let currentTime = dateFormatter.string(from: date) // formatting from the current date and time
timeLabel = currentTime // adding the time to our varliable for the label
print(timeLabel) // printing the time 
