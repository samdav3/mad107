import Cocoa
import Darwin

var greeting = "Bob's Burgers Menu"
print(greeting)

protocol MyMenu{
    var apps: String? {get set}
    var entrees: String? {get set}
    var dessert: String? {get set}
    var drinks: String? {get set}
    func menu() -> String
}

struct Menu: MyMenu{
    var apps: String?
    var entrees: String?
    var dessert: String?
    var drinks: String?
    func menu() -> String {
        return "Appetizers:" + "\n" + "\(appChoice) " + "\n" + "Entrees:" + "\n" + "\(entreeChoice) " + "\n" + "Desserts:" + "\n" + "\(dessertChoice)" + "\n" + "Drinks:" + "\n" + "\(drinkChoice)"
    }
}

enum Apps{
    case SpinachDip, PretzelBites, MozzSticks
}
enum Entrees{
    case BaconBurger, SouthBurger, MushBurger
}
enum Desserts{
    case KeyLime, Cheesecake, Brownie
}
enum Drinks{
    case Corona, Wine, Water
}

print("Appetizers:")

var appChoice = Apps.SpinachDip
switch appChoice{
case .SpinachDip:
    print("Spinach Artichoke Dip")
case .MozzSticks:
    print("Mozzarella Sticks")
case .PretzelBites:
    print("Mozzarella Sticks")
}
appChoice = .PretzelBites
print(appChoice);"\n"
appChoice = .MozzSticks
print(appChoice);"\n"
print("Entrees:");"\n"
var entreeChoice = Entrees.BaconBurger
switch entreeChoice{
case .BaconBurger:
    print("Bacon Cheeseburger")
case .SouthBurger:
    print("Southwest Burger")
case .MushBurger:
    print("Mushroom Swiss Burger")
}
entreeChoice = .SouthBurger
print(entreeChoice);"\n"
entreeChoice = .MushBurger
print(entreeChoice);"\n"
print("Desserts:");"\n"
var dessertChoice = Desserts.KeyLime
switch dessertChoice{
case .KeyLime:
    print("Key Lime Pie")
case .Cheesecake:
    print("Cheesecake")
case.Brownie:
    print("Chocolate Brownie")
}
dessertChoice = .Cheesecake
print(dessertChoice);"\n"
dessertChoice = .Brownie
print(dessertChoice);"\n"
print("Drinks:");"\n"
var drinkChoice = Drinks.Corona
switch drinkChoice{
case .Corona:
    print("Corona")
case .Water:
    print("Water")
case .Wine:
    print("Pinot Grigio")
}
drinkChoice = .Wine
print(drinkChoice);"\n"
drinkChoice = .Water
print(drinkChoice);"\n"
print("Your Selections:")
var menu: MyMenu
menu = Menu()
appChoice = .PretzelBites
entreeChoice = .MushBurger
dessertChoice = .Cheesecake
drinkChoice = .Corona
print(menu.menu())


