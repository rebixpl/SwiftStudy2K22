struct Car {
    // Normal properties
    private var make:String = "Toyota";
    private var model:String = "Camry";
    private var year:String = "1999";
    
    // Computed property
    private var details:String {
        return "\(year) \(make) \(model)"
    }
    
    func getDetails() -> String {
        return details
    }
}

var myCar:Car = Car()

print(myCar.getDetails()) // 1999 Toyota Camry
