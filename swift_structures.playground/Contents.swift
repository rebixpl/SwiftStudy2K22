// Structures ( like classes in other programming language )
// SYNTAX:
// struct <#name#> {
//     <#fields#>
// }

struct ChatView{
    // Variables and Constants are named PROPERTIES
    // PROPERTIES of ChatView structure
    var message:String = ""
    // Computed property
    var messageWithPrefix:String {
        let prefix:String = "Chris says: "
        return prefix + message
    }
    
    // View Code for the screen (UI)
    
    // Functions related to the structure are called METHODS
    // METHODS of ChatView structure
    func sendChat(){
        // Code to send the chat message
        print(messageWithPrefix)
    }
    
    func deleteChat(){
        print(message + " deleted")
    }
}
