import Cocoa
import Darwin
import Foundation


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
    
    func round1()
    func round2()
    func round3()
    func round4()
    func round5()
    func round6()
    func round7()
    func round8()
    func round9()
    func round10()
    
    func scores()
    func winner()
    
}
class GameInfo{
    var player1 = "You"
    var player2 = "Sam"
    var player3 = "Katie"
    var player4 = "Bruce"
    var player5 = "Sandy"
    
    var guess1Round1 = "8,956"
    var guess2Round1 = "45"
    var guess3Round1 = "1 million"
    var guess4Round1 = "80,000"
    var guess5Round1 = "73,000"
    
    var guess1Round2 = "3,000"
    var guess2Round2 = "7,500"
    var guess3Round2 = "12,000"
    var guess4Round2 = "8,000"
    var guess5Round2 = "15,000"
    
    var guess1Round3 = "3.3 million"
    var guess2Round3 = "900,000"
    var guess3Round3 = "5 million"
    var guess4Round3 = "850,000"
    var guess5Round3 = "1.5 million"
    
    var guess1Round4 = "01/01/1980"
    var guess2Round4 = "01/01/1975"
    var guess3Round4 = "01/01/2000"
    var guess4Round4 = "01/01/1998"
    var guess5Round4 = "01/01/1995"
    
    var guess1Round5 = "2000"
    var guess2Round5 = "2000"
    var guess3Round5 = "2000"
    var guess4Round5 = "2000"
    var guess5Round5 = "2000"
    
    var guess1Round6 = "205,000"
    var guess2Round6 = "1 million"
    var guess3Round6 = "100,000"
    var guess4Round6 = "500,000"
    var guess5Round6 = "90,000"
    
    var guess1Round7 = "50 million"
    var guess2Round7 = "100 million"
    var guess3Round7 = "73 million"
    var guess4Round7 = "20 million"
    var guess5Round7 = "15 million"
    
    var guess1Round8 = "260 million"
    var guess2Round8 = "300 million"
    var guess3Round8 = "500 million"
    var guess4Round8 = "100 million"
    var guess5Round8 = "230 million"
    
    var guess1Round9 = "400,000"
    var guess2Round9 = "300,000"
    var guess3Round9 = "410,000"
    var guess4Round9 = "200,000"
    var guess5Round9 = "380,000"
    
    var guess1Round10 = "5 million"
    var guess2Round10 = "3.5 million"
    var guess3Round10 = "10 million"
    var guess4Round10 = "2 million"
    var guess5Round10 = "4 million"

    var ques1 = "How many crocus flowers does it take to make a pound of saffron?"
    var ques2 = "What is the Diameter of the Earth (in miles)?"
    var ques3 = "What is the population of Melbourne?"
    var ques4 = "When was the euro introduced as a legal currency on the world market? (as date mm/dd/yyyy)"
    var ques5 = "When did the world celebrate its most recent millennium? (as year XXXX)"
    var ques6 = "How many US dollar coins are needed to blanket the surface area of a doubles tennis court?"
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
    
    var player1Round1 = GameInfo.init().guess1Round1
    var player2Round1 = GameInfo.init().guess2Round1
    var player3Round1 = GameInfo.init().guess3Round1
    var player4Round1 = GameInfo.init().guess4Round1
    var player5Round1 = GameInfo.init().guess5Round1
    
    var player1Round2 = GameInfo.init().guess1Round2
    var player2Round2 = GameInfo.init().guess2Round2
    var player3Round2 = GameInfo.init().guess3Round2
    var player4Round2 = GameInfo.init().guess4Round2
    var player5Round2 = GameInfo.init().guess5Round2
    
    var player1Round3 = GameInfo.init().guess1Round3
    var player2Round3 = GameInfo.init().guess2Round3
    var player3Round3 = GameInfo.init().guess3Round3
    var player4Round3 = GameInfo.init().guess4Round3
    var player5Round3 = GameInfo.init().guess5Round3
    
    var player1Round4 = GameInfo.init().guess1Round4
    var player2Round4 = GameInfo.init().guess2Round4
    var player3Round4 = GameInfo.init().guess3Round4
    var player4Round4 = GameInfo.init().guess4Round4
    var player5Round4 = GameInfo.init().guess5Round4
    
    var player1Round5 = GameInfo.init().guess1Round5
    var player2Round5 = GameInfo.init().guess2Round5
    var player3Round5 = GameInfo.init().guess3Round5
    var player4Round5 = GameInfo.init().guess4Round5
    var player5Round5 = GameInfo.init().guess5Round5
    
    var player1Round6 = GameInfo.init().guess1Round6
    var player2Round6 = GameInfo.init().guess2Round6
    var player3Round6 = GameInfo.init().guess3Round6
    var player4Round6 = GameInfo.init().guess4Round6
    var player5Round6 = GameInfo.init().guess5Round6
    
    var player1Round7 = GameInfo.init().guess1Round7
    var player2Round7 = GameInfo.init().guess2Round7
    var player3Round7 = GameInfo.init().guess3Round7
    var player4Round7 = GameInfo.init().guess4Round7
    var player5Round7 = GameInfo.init().guess5Round7
    
    var player1Round8 = GameInfo.init().guess1Round8
    var player2Round8 = GameInfo.init().guess2Round8
    var player3Round8 = GameInfo.init().guess3Round8
    var player4Round8 = GameInfo.init().guess4Round8
    var player5Round8 = GameInfo.init().guess5Round8
    
    var player1Round9 = GameInfo.init().guess1Round9
    var player2Round9 = GameInfo.init().guess2Round9
    var player3Round9 = GameInfo.init().guess3Round9
    var player4Round9 = GameInfo.init().guess4Round9
    var player5Round9 = GameInfo.init().guess5Round9
    
    var player1Round10 = GameInfo.init().guess1Round10
    var player2Round10 = GameInfo.init().guess2Round10
    var player3Round10 = GameInfo.init().guess3Round10
    var player4Round10 = GameInfo.init().guess4Round10
    var player5Round10 = GameInfo.init().guess5Round10
    
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
    var total1 = 0
    var total2 = 0
    var total3 = 0
    var total4 = 0
    var total5 = 0
        
        func round1() {
            print("\(String(describing: question1))")
            print(newline)
            print("\(play1Name) guessed \(player1Round1)")
            print("\(play2Name) guessed \(player2Round1)")
            print("\(play3Name) guessed \(player3Round1)")
            print("\(play4Name) guessed \(player4Round1)")
            print("\(play5Name) guessed \(player5Round1)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play5Name)")
            print("\(play2Name) bet on \(play4Name)")
            print("\(play3Name) bet on \(play2Name)")
            print("\(play4Name) bet on \(play5Name)")
            print("\(play5Name) bet on \(play5Name)")
            print(newline)
            print("The correct answer is \(answer1), \(play5Name), \(play4Name) and \(play1Name) bet on the winning guess, \(answer1)! You won $1!")
            print(newline)
            print("\(play5Name) wrote the winning bet! You win $1!")
            total1 += 1
            total2 += 0
            total3 += 0
            total4 += 0
            total5 += 2
        }
        func round2() {
            print("\(String(describing: question2))")
            print(newline)
            print("\(play1Name) guessed \(player1Round2)")
            print("\(play2Name) guessed \(player2Round2)")
            print("\(play3Name) guessed \(player3Round2)")
            print("\(play4Name) guessed \(player4Round2)")
            print("\(play5Name) guessed \(player5Round2)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play2Name)")
            print("\(play2Name) bet on \(play4Name)")
            print("\(play3Name) bet on \(play2Name)")
            print("\(play4Name) bet on \(play3Name)")
            print("\(play5Name) bet on \(play5Name)")
            print(newline)
            print("The correct answer is \(answer2), \(play1Name) and \(play3Name) bet on the winning guess, \(answer2)! You won $1!")
            print(newline)
            print("\(play2Name) wrote the winning bet! You win $1!")
            total1 += 1
            total2 += 1
            total3 += 1
            total4 += 0
            total5 += 0
        }
        func round3() {
            print("\(String(describing: question3))")
            print(newline)
            print("\(play1Name) guessed \(player1Round3)")
            print("\(play2Name) guessed \(player2Round3)")
            print("\(play3Name) guessed \(player3Round3)")
            print("\(play4Name) guessed \(player4Round3)")
            print("\(play5Name) guessed \(player5Round3)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play1Name)")
            print("\(play2Name) bet on \(play1Name)")
            print("\(play3Name) bet on \(play3Name)")
            print("\(play4Name) bet on \(play5Name)")
            print("\(play5Name) bet on \(play4Name)")
            print(newline)
            print("The correct answer is \(answer3), \(play1Name) and \(play2Name) bet on the winning guess, \(answer3)! You won $1!")
            print(newline)
            print("\(play1Name) wrote the winning bet! You win $1!")
            total1 += 1
            total2 += 1
            total3 += 0
            total4 += 0
            total5 += 0
        }
        func round4() {
            print("\(String(describing: question4))")
            print(newline)
            print("\(play1Name) guessed \(player1Round4)")
            print("\(play2Name) guessed \(player2Round4)")
            print("\(play3Name) guessed \(player3Round4)")
            print("\(play4Name) guessed \(player4Round4)")
            print("\(play5Name) guessed \(player5Round4)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play4Name)")
            print("\(play2Name) bet on \(play4Name)")
            print("\(play3Name) bet on \(play1Name)")
            print("\(play4Name) bet on \(play4Name)")
            print("\(play5Name) bet on \(play3Name)")
            print(newline)
            print("The correct answer is \(answer4), \(play1Name), \(play2Name) and \(play4Name) bet on the winning guess, \(answer4)! You won $1!")
            print(newline)
            print("\(play4Name) wrote the winning bet! You win $1!")
            total1 += 1
            total2 += 1
            total3 += 0
            total4 += 2
            total5 += 0
        }
        func round5() {
            print("\(String(describing: question5))")
            print(newline)
            print("\(play1Name) guessed \(player1Round5)")
            print("\(play2Name) guessed \(player2Round5)")
            print("\(play3Name) guessed \(player3Round5)")
            print("\(play4Name) guessed \(player4Round5)")
            print("\(play5Name) guessed \(player5Round5)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play1Name)")
            print("\(play2Name) bet on \(play1Name)")
            print("\(play3Name) bet on \(play3Name)")
            print("\(play4Name) bet on \(play4Name)")
            print("\(play5Name) bet on \(play5Name)")
            print(newline)
            print("The correct answer is \(answer5), \(play1Name), \(play2Name), \(play3Name), \(play4Name) and \(play5Name) bet on the winning guess, \(answer5)! You won $1!")
            print(newline)
            print("(answer5), \(play1Name), \(play2Name), \(play3Name), \(play4Name) and \(play5Name) wrote the winning bet! You win $1!")
            total1 += 2
            total2 += 2
            total3 += 2
            total4 += 2
            total5 += 2
        }
        func round6() {
            print("\(String(describing: question6))")
            print(newline)
            print("\(play1Name) guessed \(player1Round6)")
            print("\(play2Name) guessed \(player2Round6)")
            print("\(play3Name) guessed \(player3Round6)")
            print("\(play4Name) guessed \(player4Round6)")
            print("\(play5Name) guessed \(player5Round6)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play5Name)")
            print("\(play2Name) bet on \(play3Name)")
            print("\(play3Name) bet on \(play3Name)")
            print("\(play4Name) bet on \(play1Name)")
            print("\(play5Name) bet on \(play4Name)")
            print(newline)
            print("The correct answer is \(answer6), \(play2Name), \(play3Name) and \(play5Name) bet on the winning guess, \(answer6)! You won $1!")
            print(newline)
            print("\(play3Name) wrote the winning bet! You win $1!")
            total1 += 0
            total2 += 1
            total3 += 2
            total4 += 0
            total5 += 1
        }
        func round7() {
            print("\(String(describing: question7))")
            print(newline)
            print("\(play1Name) guessed \(player1Round7)")
            print("\(play2Name) guessed \(player2Round7)")
            print("\(play3Name) guessed \(player3Round7)")
            print("\(play4Name) guessed \(player4Round7)")
            print("\(play5Name) guessed \(player5Round7)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play3Name)")
            print("\(play2Name) bet on \(play3Name)")
            print("\(play3Name) bet on \(play4Name)")
            print("\(play4Name) bet on \(play4Name)")
            print("\(play5Name) bet on \(play1Name)")
            print(newline)
            print("The correct answer is \(answer7), \(play3Name) and \(play4Name) bet on the winning guess, \(answer7)! You won $1!")
            print(newline)
            print("\(play4Name) wrote the winning bet! You win $1!")
            total1 += 0
            total2 += 0
            total3 += 1
            total4 += 2
            total5 += 0
        }
        func round8() {
            print("\(String(describing: question8))")
            print(newline)
            print("\(play1Name) guessed \(player1Round8)")
            print("\(play2Name) guessed \(player2Round8)")
            print("\(play3Name) guessed \(player3Round8)")
            print("\(play4Name) guessed \(player4Round8)")
            print("\(play5Name) guessed \(player5Round8)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play4Name)")
            print("\(play2Name) bet on \(play5Name)")
            print("\(play3Name) bet on \(play1Name)")
            print("\(play4Name) bet on \(play1Name)")
            print("\(play5Name) bet on \(play1Name)")
            print(newline)
            print("The correct answer is \(answer8), \(play3Name), \(play4Name) and \(play5Name) bet on the winning guess, \(answer8)! You won $1!")
            print(newline)
            print("\(play1Name) wrote the winning bet! You win $1!")
            total1 += 1
            total2 += 0
            total3 += 1
            total4 += 1
            total5 += 1
        }
        func round9() {
            print("\(String(describing: question9))")
            print(newline)
            print("\(play1Name) guessed \(player1Round9)")
            print("\(play2Name) guessed \(player2Round9)")
            print("\(play3Name) guessed \(player3Round9)")
            print("\(play4Name) guessed \(player4Round9)")
            print("\(play5Name) guessed \(player5Round9)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play5Name)")
            print("\(play2Name) bet on \(play4Name)")
            print("\(play3Name) bet on \(play2Name)")
            print("\(play4Name) bet on \(play5Name)")
            print("\(play5Name) bet on \(play5Name)")
            print(newline)
            print("The correct answer is \(answer9), \(play1Name), \(play4Name) and \(play5Name) bet on the winning guess, \(answer9)! You won $1!")
            print(newline)
            print("\(play5Name) wrote the winning bet! You win $1!")
            total1 += 1
            total2 += 0
            total3 += 0
            total4 += 1
            total5 += 2
        }
        func round10() {
            print("\(String(describing: question10))")
            print(newline)
            print("\(play1Name) guessed \(player1Round10)")
            print("\(play2Name) guessed \(player2Round10)")
            print("\(play3Name) guessed \(player3Round10)")
            print("\(play4Name) guessed \(player4Round10)")
            print("\(play5Name) guessed \(player5Round10)")
            print(newline)
            print("Place your bets!")
            print(newline)
            print("\(play1Name) bet on \(play4Name)")
            print("\(play2Name) bet on \(play2Name)")
            print("\(play3Name) bet on \(play2Name)")
            print("\(play4Name) bet on \(play5Name)")
            print("\(play5Name) bet on \(play1Name)")
            print(newline)
            print("The correct answer is \(answer10), \(play2Name) and \(play3Name) bet on the winning guess, \(answer10)! You won $1!")
            print(newline)
            print("\(play2Name) wrote the winning bet! You win $1!")
            total1 += 0
            total2 += 2
            total3 += 1
            total4 += 0
            total5 += 0
        }
    
    func scores() {
        print("\(play1Name) has a score of \(total1) points!")
        print("\(play2Name) has a score of \(total2) points!")
        print("\(play3Name) has a score of \(total3) points!")
        print("\(play4Name) has a score of \(total4) points!")
        print("\(play5Name) has a score of \(total5) points!")
        print(newline)
        
    }
    
    func winner(){
        let totals = [total1, total2, total3, total4, total5]
        let names = [play1Name:total1, play2Name:total2, play3Name:total3, play4Name:total4, play5Name:total5]
        var winnersList: [String] = [ ]
        print("And the winner is...")
        for (name,total) in names{
            let num = totals.max()!
            if (total == num){
                winnersList.append(name)
                winnersList.append(name)
                print("\(name) with \(total) points!")
        }
    }
        let tie = winnersList.count
        if tie >= 2 {
            print("There was a tie!")
        }
}
}
            



print(greeting)
print(newline)
print(rules)
print(newline)
var gamePlay = GameBets()
RETURN; gamePlay.round1()
RETURN; gamePlay.scores()
RETURN; gamePlay.round2()
RETURN; gamePlay.scores()
RETURN; gamePlay.round3()
RETURN; gamePlay.scores()
RETURN; gamePlay.round4()
RETURN; gamePlay.scores()
RETURN; gamePlay.round5()
RETURN; gamePlay.scores()
RETURN; gamePlay.round6()
RETURN; gamePlay.scores()
RETURN; gamePlay.round7()
RETURN; gamePlay.scores()
RETURN; gamePlay.round8()
RETURN; gamePlay.scores()
RETURN; gamePlay.round9()
RETURN; gamePlay.scores()
RETURN; gamePlay.round10()
RETURN; gamePlay.scores()
print(newline)
RETURN; gamePlay.winner()
print(newline)

print("Thanks for playing Wits & Wagers!")



