import UIKit

class Spaceship {
    var fuelLevel = 100
    var name = ""
    
    
    func cruise() {
        // code to initiate cruising
        print("Cruising is initiated for \(name)")
    }
    
    func thrust() {
        // code to initiate rocket thrusters
        print("Rocket thrusters initiated for \(name)")
    }
}

var myShip = Spaceship()
myShip.name = "Enterprise"
myShip.cruise()
myShip.thrust()
print(myShip.fuelLevel)
myShip.name = "Millenium Falcon"
print(myShip.name)
