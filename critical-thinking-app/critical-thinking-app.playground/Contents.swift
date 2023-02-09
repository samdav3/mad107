
var greeting = "Lets play Wits and Wagers!"
let newline = ""
var rules = """
The rules are simple!
First, make a guess of what you think is the right answer (or as close to the right answer as you can get).
Then, you get 1 bet for each question and you can bet on any guess!
Whichever player's answer is closest to the right answer, but does not go above it, wins!
If you bet on the winning answer, you will get double your bet in money. If you lose, you get your 2 bets back. However, if you have bet additional money you have won, you will lose this money!
Whoever has the most money at the end of the game wins!
You are Player 1!
"""
var total1 = 0
var total2 = 0
var total3 = 0
var total4 = 0
var total5 = 0
let player1 = "You"
let player2 = "Sam"
let player3 = "Katie"
let player4 = "Bruce"
let player5 = "Sandy"
let ques1 = "How many crocus flowers does it take to make a pound of saffron?"
let ques2 = "What is the Diameter of the Earth (in miles)?"
let ques3 = "What is the population of Melbourne?"

let ans1 = "75,000"
let ans2 = "8,000"
let ans3 = "3.5 million"


print(greeting)
print(newline)
print(rules)
print(newline)

print(ques1)
print(newline)
print("\(player1) guessed 8,956")
print("\(player2) guessed 45")
print("\(player3) guessed 1 million")
print("\(player4) guessed 80,000")
print("\(player5) guessed 73,000")
print(newline)
print("Place your bets!")
print(newline)
print("\(player1) bet on \(player5)")
print("\(player2) bet on \(player4)")
print("\(player3) bet on \(player2)")
print("\(player4) bet on \(player5)")
print("\(player5) bet on \(player5)")
print(newline)
print("The correct answer is \(ans1), you bet on the winning guess, 73,000! You won $1!")
total1 += 1
total4 += 1
total5 += 1
print(newline)

print(ques2)
print(newline)
print("\(player1) guessed 10,303")
print("\(player2) guessed 100,000")
print("\(player3) guessed 7,900")
print("\(player4) guessed 222,000")
print("\(player5) guessed 6,300")
print(newline)
print("Place your bets!")
print(newline)
print("\(player1)bet on \(player3)")
print("\(player2) bet on \(player2)")
print("\(player3) bet on \(player2)")
print("\(player4) bet on \(player4)")
print("\(player5) bet on \(player1)")
print("The correct answer is \(ans2), you bet on the winning guess, 7,900! You won $1!")
total1 += 1
print(newline)

print(ques3)
print(newline)
print("\(player1) guessed 3.3 million")
print("\(player2) guessed 900,000")
print("\(player3) guessed 200,000")
print("\(player4) guessed 70,000")
print("\(player5) guessed 1.5 million")
print(newline)
print("Place your bets!")
print(newline)
print("\(player1) bet on \(player2)")
print("\(player2) bet on \(player1)")
print("\(player3) bet on \(player1)")
print("\(player4) bet on \(player5)")
print("\(player5) bet on \(player5)")
print("The correct answer is \(ans3), you did not bet on the winning guess, 3.3 million! You do not win $1!")
total2 += 1
total3 += 1
print(newline)
print("Who is the winner for this round??")
print("Drumrole please......")
print(newline)
print("\(player1) won a total of \(total1) dollar(s)!")
print("\(player2) won a total of \(total2) dollar(s)!")
print("\(player3) won a total of \(total3) dollar(s)!")
print("\(player4) won a total of \(total4) dollar(s)!")
print("\(player5) won a total of \(total5) dollar(s)!")
print(newline)
print("And the winner is \(player1). You won the game!!")

