//
//  WhatisACT.swift
//  JACK
//
//  Created by Sato Masataka on 2023/01/09.
//

import SwiftUI

struct ExplanationOfACT_View: View {
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
                    ACTValueTrainingManagement_View().environmentObject(ACTValueTrainingManagementModel())
                }
            }
            VStack {
                Group {
                    Spacer()
                    Text("What is ACT?")
                        .font(.title)
                    Text("ACT is abbreviation for \"Acceptance and Commitment Therapy\".")
                    Text("And a part of cognitive behavioral therapy.")
                }
                Group {
                    Spacer()
                    Text("What is ACT Value Training?")
                        .font(.title2)
                    Text("ACT Value Training is one way to find your own values.")
                }
                Group {
                    Spacer()
                    Text("Refarences")
                        .font(.title3)
                    Text("Russ Harris. 2007. The Happiness Trap 〜How to Stop Struggling and Star Living〜\n")
                        .italic()
                    Text("Russ Harris. 2009. ACT with love 〜Stop struggling, reconcile differences. and strengthen your relationship with acceptance and commitment therapy〜\n")
                        .italic()
                    Text("Russ Harris. 2011. The Confidence Gap 〜A Guide to Overcoming Frea and Self-Doubt〜\n")
                        .italic()
                }
                Spacer()
            }
        }
    }
}

struct ExplanationOfACT_View_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationOfACT_View()
    }
}
