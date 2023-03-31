import Cocoa

var greeting = "Build My Prius"

protocol PriusOptions: PriusOptions2{
    //CHOSEN CHOICES
    var modelChoice: String {get set}
    var extColor: String {get set}
    var intColor: String {get set}
    var packageChoice: String {get set}
    var accessoryChoice: String {get set}
    var engineChoice: String {get set}
    //RETURNING CHOICES
    func priusChoice() -> String
    
}


class PriusOptions2{
    //MODEL CHOICES
    var LE = "LE"
    var LEawd = "LE AWD"
    var XLE = "XLE"
    var XLEawd = "XLE AWD"
    var limited = "Limited"
    var limitedAWD = "Limited AWD"
    
    //EXTERIOR COLOR CHOICES
    var cuttingEdge = "Cutting Edge"
    var guardianGray = "Guardian Gray"
    var midnightBlack = "Midnight Black"
    var supersonicRed = "Supersonic Red"
    var windchillPearl = "Wind Chill Pearl"
    var resevoirBlue = "Resevoir Blue"
      
    //INTERIOR COLOR CHOICES
    var ltGray = "LT. Gray"
    var gradientBlack = "Gradient Black"
        
    //ENGINE CHOICES
    var FWD = "2.0L 4-Cyl Gas Electric Hybrid Engine with FWD"
    var AWD = "2.0L 4-Cyl Gas Electric Hybrid Engine with AWD"
       
    //PACKAGE CHOICES
    var digitalKey = "Digital Key"
    var audiioMulti = "12.3in Toyota Audio Multimedia"
    var glassRoof = "Fixed Glass Roof"
    var audioMultiOptions = "12.3in Toyota Audio Multimedia with options"
    var gladdRoof1 = "Fixed Glass Roof with options 1"
    var glassRoof2 = "Fixed Glass Roof with options 2"
    var glassRoof3 = "Fixed Glass Roof with options 3"
    var noPackage = "None"
     
    //ACCESSORY CHOICES
    var linerPackage = "All Weather Floor Liner Package"
    var weatherLiners = "All Weather Floor Liners"
    var cargoLiner = "Cargo Liner"
    var catShield = "Cat Shield by MillerCAT: Associated Accessory Products"
    var emergencyKit = "Emergency Kit"
    var dashCam = "Integrated DashCam"
    var keyGloves = "Key Gloves"
    var mudguards = "Mudguards"
    var preferredWeatherLiners = "Preferred Accessory Package with all Weatherproof Floor Liners"
    var preferredCarpetLiners = "Preferred Accessory Package with Carpet Mats"
    var noAccessories = "None"
    
    
    init(){
        //MODELS
        LE = "LE"
        LEawd = "LE AWD"
        XLE = "XLE"
        XLEawd = "XLE AWD"
        limited = "Limited"
        limitedAWD = "Limited AWD"
        
        //EXTERIOR COLORS
        cuttingEdge = "Cutting Edge"
        guardianGray = "Guardian Gray"
        midnightBlack = "Midnight Black"
        supersonicRed = "Supersonic Red"
        windchillPearl = "Wind Chill Pearl"
        resevoirBlue = "Resevoir Blue"
        
        //INTERIOR COLORS
        ltGray = "LT. Gray"
        gradientBlack = "Gradient Black"
        
        //ENGINES
        FWD = "2.0L 4-Cyl Gas Electric Hybrid Engine with FWD"
        AWD = "2.0L 4-Cyl Gas Electric Hybrid Engine with AWD"
        
        //PACKAGES
        digitalKey = "Digital Key"
        audiioMulti = "12.3in Toyota Audio Multimedia"
        glassRoof = "Fixed Glass Roof"
        audioMultiOptions = "12.3in Toyota Audio Multimedia with options"
        gladdRoof1 = "Fixed Glass Roof with options 1"
        glassRoof2 = "Fixed Glass Roof with options 2"
        glassRoof3 = "Fixed Glass Roof with options 3"
        noPackage = "None"
        
        //ACCESSORIES
        linerPackage = "All Weather Floor Liner Package"
        weatherLiners = "All Weather Floor Liners"
        cargoLiner = "Cargo Liner"
        catShield = "Cat Shield by MillerCAT: Associated Accessory Products"
        emergencyKit = "Emergency Kit"
        dashCam = "Integrated DashCam"
        keyGloves = "Key Gloves"
        mudguards = "Mudguards"
        preferredWeatherLiners = "Preferred Accessory Package with all Weatherproof Floor Liners"
        preferredCarpetLiners = "Preferred Accessory Package with Carpet Mats"
        noAccessories = "None"
    }
}


class PriusOption1: PriusOptions2, PriusOptions{
    var modelChoice = PriusOptions2.init().LE
    var extColor = PriusOptions2.init().cuttingEdge
    var intColor = PriusOptions2.init().gradientBlack
    var packageChoice = PriusOptions2.init().glassRoof3
    var accessoryChoice = PriusOptions2.init().preferredWeatherLiners
    var engineChoice = PriusOptions2.init().AWD
    
    func priusChoice() -> String{
        return "Your custom Prius Build includes an Exterior Color of \(extColor), an Interior Color of \(intColor), the \(modelChoice) model, the \(engineChoice) engine, the \(packageChoice) package, and the \(accessoryChoice) accessory package."
    }
}

var priusBuild = PriusOption1()
print(priusBuild.priusChoice())


