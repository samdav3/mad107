import Cocoa
import Darwin

var greeting = "Critical Thinking Functions"
var grwm = "Get Ready with me for a Typical Day in my life"

print(grwm)

func planToday(alarm:String, gym:String, work:String, homework:String) -> String {
    let schedule = "Get up at \(alarm). Go to the gym at \(gym). Work from \(work). Work on Homework from \(homework)."
    print(schedule)
    print("And there you have it, a look into the typical schedule I face each day!")
    return schedule
}
let previewToday = { () -> String in
    let today = planToday(alarm: "4:30am", gym: "5am", work: "8am - 5pm", homework: "6pm until I am too tired, and go to bed.")
    return today
}
previewToday()
