struct MyStructure{
    
    var message = "Hello"

    func myFunction(){
        print(message)
    }
}

// Instances
var a:MyStructure = MyStructure()
a.message = "Hi all"
a.myFunction()

var b = MyStructure()
b.message = "b structure"
print(b.message)

//---------------------------------
struct DatabaseManager{
    // Properties
    private var serverName = "www.serwerzajebisty.com"
    
    // Methods
    func saveData(data:String) -> Bool {
        // This code saves the data and returns boolean result
        return true
    }
}

struct ChatView{
    
    var message = "Hello"
    
    func sendChat(){
        
        // Save the caht message
        var db = DatabaseManager()
        let successful = db.saveData(data: message)
    
        // Check the successful boolean value, if unsuccessful, show alert to user
    }
}
