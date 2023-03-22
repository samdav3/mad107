import Cocoa

var greeting = "Bill's Burgers Receipe"

var greeting = "Bob's Burgers Menu"
//print out greeting

protocol MyMenu{
    //create protocol for menu items
}

struct Menu: MyMenu{
    //structure for menu items
    func menu() -> String {
        //function to return the appetizer choices chosen by user (me)
    }
}

enum Apps{
    //appetizer choices
}
enum Entrees{
    //entree choices
}
enum Desserts{
    //dessert choices
}
enum Drinks{
    //drink choices
}



var appChoice = //to select app choice from enum
switch appChoice{
//switch between app choices and print out appetizer
}
//print out appetizer options

var entreeChoice = //select entree options from enum
switch entreeChoice{
//switch between entree choices and print out entree
}
//print out entree options
var dessertChoice = //select dessert choice from enum
switch dessertChoice{
//switch between dessert choices and print out dessert
}
//print out dessert choices
var drinkChoice = //select drink choice from enum
switch drinkChoice{
//switch between drink choices and print out drink
}
//print drink choices
print("Your Selections:")
var menu: MyMenu // assign variable for menu to protocol
menu = Menu() // assign menu to structure
appChoice = .PretzelBites // assign user choices from enum
entreeChoice = .MushBurger// assign user choices from enum
dessertChoice = .Cheesecake// assign user choices from enum
drinkChoice = .Corona// assign user choices from enum
print(menu.menu()) // call menu variable using the menu function from within the structure
