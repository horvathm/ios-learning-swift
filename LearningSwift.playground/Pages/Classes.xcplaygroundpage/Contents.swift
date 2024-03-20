///
/// Class
///


/*
 - There’s no requirement for classes to subclass any standard root class, so you can include or omit a superclass as needed.
 */

class Appliance {
    var manufacturer: String = "default"
    var model: String = "default"
    var voltage: Int
    
    // Initializer
    init() {
        self.voltage = 0
    }
    
    init(voltage: Int) {
        self.voltage = voltage
    }
    
    func getDetails() -> String {
        var message = "This is the \(self.model) from \(self.manufacturer)"
        
        if self.voltage >= 220 {
            message += "Model is for European market"
        }
        
        return message
    }
    
    
    deinit{
        // ...
        // ARC = Automatic Reference Counting
    }
}

var kettle = Appliance()
kettle.voltage = 220
kettle.model = "TeaMaster"
kettle.manufacturer = "Bosch"
print(kettle.getDetails())

///
/// Inheritance
///

/*
 - overriding a method by accident, without override, is detected by the compiler as an error.
 */

final class Toaster : Appliance {     // make it "sealed"
    var slices: Int
    
    override init() {
        self.slices = 2
        // atomatically calls parent init() method after this init executed
        super.init()
        // can call it manually too. flip side.
    }
    
    final func toast() {   // with final keyword we can avoid override
        print("Toast created")
    }
    
    deinit {
        
    }
}

var toaster = Toaster()
toaster.model = "AcmeCorp"
