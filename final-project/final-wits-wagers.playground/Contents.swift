import Cocoa


let greeting = "Lets play Wits and Wagers!"
let newline = ""
let rules = """
The rules are simple!
First, make a guess of what you think is the right answer (or as close to the right answer as you can get).
Then, you get 1 bet for each question and you can bet on any guess!
Whichever player's answer is closest to the right answer, but does not go above it, wins!
If you bet on the winning answer, you will get double your bet in money. If you lose, you get your 2 bets back. However, if you have bet additional money you have won, you will lose this money!
Whoever has the most money at the end of the game wins!
You are Player 1!
"""

protocol GameRules{
    var play1Name: String {get set}
    var play2Name: String {get set}
    var play3Name: String {get set}
    var play4Name: String {get set}
    var play5Name: String {get set}
    
    var ques1: String {get set}
    var ques2: String {get set}
    var ques3: String {get set}
    var ques4: String {get set}
    var ques5: String {get set}
    var ques6: String {get set}
    var ques7: String {get set}
    var ques8: String {get set}
    var ques9: String {get set}
    var ques10: String {get set}
    
    var ans1: String {get set}
    var ans2: String {get set}
    var ans3: String {get set}
    var ans4: String {get set}
    var ans5: String {get set}
    var ans6: String {get set}
    var ans7: String {get set}
    var ans8: String {get set}
    var ans9: String {get set}
    var ans10: String {get set}
    
    func Game() -> String
    
}
class GameInfo{
    var player1 = "You"
    var player2 = "Sam"
    var player3 = "Katie"
    var player4 = "Bruce"
    var player5 = "Sandy"
    
    var guess1 = ""
    var guess2 = ""
    var guess3 = ""
    var guess4 = ""
    var guess5 = ""

    var ques1 = "How many crocus flowers does it take to make a pound of saffron?"
    var ques2 = "What is the Diameter of the Earth (in miles)?"
    var ques3 = "What is the population of Melbourne?"
    var ques4 = "When was the euro introduced as a legal currency on the world market? (as date mm/dd/yyyy)"
    var ques5 = "When did the world celebrate its most recent millennium? (as year XXXX)"
    var ques6 = "How many US dollar coins are needed to blanket the surface area ofa doubles tennis court?"
    var ques7 = "What is the width of the Great Wall of China? (in meters)"
    var ques8 = "What is the population of Indonesia?"
    var ques9 = "What is the distance between the earth and the moon? (in kilometers)"
    var ques10 = "How many English language articles does Wikipedia have?"

    var ans1 = "75,000"
    var ans2 = "8,000"
    var ans3 = "3.5 million"
    var ans4 = "01/01/1999"
    var ans5 = "2000"
    var ans6 = "107,000"
    var ans7 = "21.19618 million"
    var ans8 = "261.1 million"
    var ans9 = "384,400"
    var ans10 = "4,000,000"
}

class GameBets: GameInfo, GameRules{
    var play1Name = GameInfo.init().player1
    var play2Name = GameInfo.init().player2
    var play3Name = GameInfo.init().player3
    var play4Name = GameInfo.init().player4
    var play5Name = GameInfo.init().player5
    
    var guessPlayer1 = GameInfo.init().guess1
    var guessPlayer2 = GameInfo.init().guess2
    var guessPlayer3 = GameInfo.init().guess3
    var guessPlayer4 = GameInfo.init().guess4
    var guessPlayer5 = GameInfo.init().guess5
    
    var question1 = GameInfo.init().ques1
    var question2 = GameInfo.init().ques2
    var question3 = GameInfo.init().ques3
    var question4 = GameInfo.init().ques4
    var question5 = GameInfo.init().ques5
    var question6 = GameInfo.init().ques6
    var question7 = GameInfo.init().ques7
    var question8 = GameInfo.init().ques8
    var question9 = GameInfo.init().ques9
    var question10 = GameInfo.init().ques10
    
    var answer1 = GameInfo.init().ans1
    var answer2 = GameInfo.init().ans2
    var answer3 = GameInfo.init().ans3
    var answer4 = GameInfo.init().ans4
    var answer5 = GameInfo.init().ans5
    var answer6 = GameInfo.init().ans6
    var answer7 = GameInfo.init().ans7
    var answer8 = GameInfo.init().ans8
    var answer9 = GameInfo.init().ans9
    var answer10 = GameInfo.init().ans10
    
    func Game() -> String {
        var total1 = 0
        var total2 = 0
        var total3 = 0
        var total4 = 0
        var total5 = 0
        
        let number1 = [question1: answer1, question2: answer2, question3: answer3, question4: answer4, question5: answer5, question6: answer6, question7: answer7, question8: answer8, question9: answer9, question10: answer10]
        //let guesses = [play1Name: guessPlayer1, play2Name: guessPlayer2, play3Name: guessPlayer3, play4Name: guessPlayer4, play5Name: guessPlayer5]
        
        for (ques, ans) in number1{
            print("\(ques)")
            print(newline)
            print("\(play1Name) guessed \(guessPlayer1)")
            print("\(play2Name) guessed \(guessPlayer2)")
            print("\(play3Name) guessed \(guessPlayer3)")
            print("\(play4Name) guessed \(guessPlayer4)")
            print("\(play5Name) guessed \(guessPlayer5)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play5Name)")
            print("\(play2Name) bet on \(play4Name)")
            print("\(play3Name) bet on \(play2Name)")
            print("\(play4Name) bet on \(play5Name)")
            print("\(play5Name) bet on \(play5Name)")
            print(newline)
            print("The correct answer is \(ans), \(play5Name), \(play4Name) and \(play1Name) bet on the winning guess, \(ans)! You won $1!")
            print(newline)
            print("\(play5Name) wrote the winning bet! You win $1!")
            total1 += 1
            total4 += 1
            total5 += 2
            total2 += 0
            total3 += 0
            print(newline)
        }
        return Game()
    }
}


print(greeting)
print(newline)
print(rules)
print(newline)
var gamePlay = GameBets()
print(gamePlay.Game())

