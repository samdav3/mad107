import Cocoa
import Foundation

var greeting = "The Clock App"
var timeLabel = "";

let time = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:MM:ss a"
    let currentTime = dateFormatter.string(from: date)
    timeLabel = currentTime
    print(timeLabel)
}


