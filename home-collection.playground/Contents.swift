import Cocoa

var greeting = "My Home Collection of Spices"

var spices = ["CIN":"Cinnamon", "ORG":"Oregano", "ADO":"Adobo", "THY":"Thyme"]
for (spiceCode, spiceName) in spices{
    print("\(spiceCode): \(spiceName)")
}
var spices2 = ["Cinnnamon", "Oregano", "Adobo", "Thyme"]
for spice in spices2{
    print(spice)
}
