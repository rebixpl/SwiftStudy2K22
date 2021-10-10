//
//  ContentView.swift
//  swift_ui_slots
//
//  Created by rebix on 10/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var slot1 = "apple"
    @State private var slot2 = "apple"
    @State private var slot3 = "apple"
    @State private var resultMessage = ""
    
    private let slotTypesList:[String] = ["apple", "cherry", "star"]
    
    var rng = SystemRandomNumberGenerator()
    
    var body: some View {
        VStack{
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Spacer()
            Text("Credist: \(credits)")
            Spacer()
            HStack{
                // Slot 1
                Image(String(slot1)).resizable().aspectRatio(contentMode:.fit)
                // Slot 2
                Image(String(slot2)).resizable().aspectRatio(contentMode:.fit)
                // Slot 3
                Image(String(slot3)).resizable().aspectRatio(contentMode:.fit)
            }
            Spacer()
            Text(String(resultMessage))
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
            Spacer()
            Button(action: {
                if credits >= 25 {
                    // Spin the wheel if player has enough credits
                    spin()
                } else {
                    resultMessage = "You're broke. Insert more credits"
                }
                
            }, label: {
                Text("Spin (25 credits)").fontWeight(.bold).foregroundColor(.white).padding(EdgeInsets.init(top: 10.0, leading: 50.0, bottom: 10.0, trailing: 50.0))
            }).background(Color.red).cornerRadius(24.0)
            Spacer()
        }
    }
    
    func spin(){
        // Generate random elements
        slot1 = slotTypesList.randomElement()!
        slot2 = slotTypesList.randomElement()!
        slot3 = slotTypesList.randomElement()!
        
        // Check if player won
        checkWin()
    }
    
    func checkWin(){
        if(slot1 == slot2) && (slot2 == slot3){
            // 3x the same symbol
            // Display win message and add credits to user balance
            resultMessage = "You Won!"
            credits += 100
        } else {
            // Player did not win, remove credits
            resultMessage = ""
            credits -= 25
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
