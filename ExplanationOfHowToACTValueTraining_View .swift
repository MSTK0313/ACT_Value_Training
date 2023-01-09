//
//  ExplanationOfHowTo .swift
//  JACK
//
//  Created by Sato Masataka on 2023/01/09.
//

import SwiftUI

struct ExplanationOfHowToACTValueTraining_View : View {
    @State var close: Bool = false
    
    //TODO: 見た目が悪い
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button(action: {self.close.toggle()}) {
                    VStack {
                        Label("",systemImage: "xmark.circle")
                    }
                }
                .frame(alignment: .topLeading)
                .fullScreenCover(isPresented: self.$close) {
                    ACTValueTrainingInput_View()
                }
            }
            ScrollView {
                VStack {
                    Group {
                        Spacer()
                        Text("How to ACT Value Training?")
                            .font(.title)
                        
                        Text("1. Please think and write your value\n")
                        
                        Text("2. Select you ideal level per 10 points")
                        Text("10 point: The most important value.")
                        Text("1 point: The least important value.\n")
                        
                        Text("3. Select you achivement level per 10 points")
                        Text("10 point: Already you can this value and you are satisfied.")
                        Text("1 point: You didn't this value not at all and you have a complaints.\n")
                        Text("4. Please repeat 1〜3 at each category\n")
                    }
                    Group {
                        Spacer()
                        Text("Tips of write a value")
                            .font(.title2)
                        Text("Separate value and rule due to two reasons.").font(.title3)
                        Text("First, you feel pressure and suffocating to live your life according to the rules.")
                        Text("On the other hand, if you obey your value, then you feel cheerfulness, freedom, liberation of mind etc.\n")
                        
                        Text("Second, any value has an infinite number of actions that can be taken.")
                        Text("But under the rules, you are restricted your actions.\n")
                        
                    
                        Text("How to seperate value and rule?\n")
                            .font(.title2)
                        Text("Value has words \"want\",\"select\",\"hope\",\"value\",\"impoatant\",\"meaningful\" etc.\n")
                        
                        Text("On the other hand, Rule has words \"should\",\"must\",\"have to\",\"right\",\"wrongh\",\"good\",\"bad\" etc.\n")
                    }
                    Group {
                        Text("For example")
                        Text("Rule: I must consider my partner's desire.")
                        Text("Value: I want to consider my partner's desire.\n")
                        
                        Text("Rule: I have to have to get into the habit of exercising")
                        Text("Value: The habit of exercising is important for me Because of I put on values health and happiness.\n")
                        
                        Text("Rule: I must spend good time with partner. Because of that is right things.")
                        Text("Value: Spend good time with partner is important for me. Because of I need it to create the relationship I want.\n")
                    }
                    Spacer()
                }
                .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

struct ExplanationOfHowToACTValueTraining_View_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationOfHowToACTValueTraining_View()
    }
}
