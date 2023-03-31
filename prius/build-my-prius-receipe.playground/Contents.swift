import Cocoa

var greeting = "Build My Prius Receipe"
protocol PriusOptions: PriusOptions2{
    //protocol for class to follow and set variables for choices
    
    //CHOSEN CHOICES
    var modelChoice: String
    var extColor: String
    var intColor: String
    var packageChoice: String
    var accessoryChoice: String
    var engineChoice: String
    //RETURNING CHOICES
    func priusChoice() -> String
    
}

//establishing variables for choices
class PriusOptions2{
    //MODEL CHOICES
    var LE
    var LEawd
    var XLE
    var XLEawd
    var limited
    var limitedAWD
    
    //EXTERIOR COLOR CHOICES
    var cuttingEdge
    var guardianGray
    var midnightBlack
    var supersonicRed
    var windchillPearl
    var resevoirBlue
      
    //INTERIOR COLOR CHOICES
    var ltGray
    var gradientBlack
        
    //ENGINE CHOICES
    var FWD
    var AWD
       
    //PACKAGE CHOICES
    var digitalKey
    var audiioMulti
    var glassRoof
    var audioMultiOptions
    var gladdRoof1
    var glassRoof2
    var glassRoof3
    var noPackage
     
    //ACCESSORY CHOICES
    var linerPackage
    var weatherLiners
    var cargoLiner
    var catShield
    var emergencyKit
    var dashCam
    var keyGloves
    var mudguards
    var preferredWeatherLiners
    var preferredCarpetLiners
    var noAccessories
    
    //initializing what the variables
    init(){
        //MODELS
        LE
        LEawd
        XLE
        XLEawd
        limited
        limitedAWD
        
        //EXTERIOR COLORS
        cuttingEdge
        guardianGray
        midnightBlack
        supersonicRed
        windchillPearl
        resevoirBlue
        
        //INTERIOR COLORS
        ltGray
        gradientBlack
        
        //ENGINES
        FWD
        AWD
        
        //PACKAGES
        digitalKey
        audiioMulti
        glassRoof
        audioMultiOptions
        gladdRoof1
        glassRoof2
        glassRoof3
        noPackage
        
        //ACCESSORIES
        linerPackage
        weatherLiners
        cargoLiner
        catShield
        emergencyKit
        dashCam
        keyGloves
        mudguards
        preferredWeatherLiners
        preferredCarpetLiners
        noAccessories
    }
}

//class for chosen options
class PriusOption1: PriusOptions2, PriusOptions{
    var modelChoice
    var extColor
    var intColor
    var packageChoice
    var accessoryChoice
    var engineChoice
    func priusChoice() -> String{
        return
    }
}
//calling the function from the class
var priusBuild = PriusOption1()
print(priusBuild.priusChoice())
