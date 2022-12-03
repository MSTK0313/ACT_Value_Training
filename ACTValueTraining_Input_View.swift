//
//  ACTValueTrainingInput_View.swift
//  JACK
//
//  Created by Sato Masataka on 2022/03/19.
//

import SwiftUI

struct ACTValueTrainingInput_View: View {
    @State var family = ""
    @State var idealLevel_family = 1
    @State var achivementLevel_family = 1
    @State var love = ""
    @State var idealLevel_love = 1
    @State var achivementLevel_love = 1
    @State var nurture = ""
    @State var idealLevel_nurture = 1
    @State var achivementLevel_nurture = 1
    @State var friend = ""
    @State var idealLevel_friend = 1
    @State var achivementLevel_friend = 1
    @State var work = ""
    @State var idealLevel_work = 1
    @State var achivementLevel_work = 1
    @State var grows = ""
    @State var idealLevel_grows = 1
    @State var achivementLevel_grows = 1
    @State var hoby = ""
    @State var idealLevel_hoby = 1
    @State var achivementLevel_hoby = 1
    @State var mental = ""
    @State var idealLevel_mental = 1
    @State var achivementLevel_mental = 1
    @State var community = ""
    @State var idealLevel_community = 1
    @State var achivementLevel_community = 1
    @State var health = ""
    @State var idealLevel_health = 1
    @State var achivementLevel_health = 1
    
    @State var communication = false
    let data = [1,2,3,4,5,6,7,8,9]
    
    var body: some View {
        NavigationView {
            VStack{
                Form() {
                    Section {
                        Text("家族")
                            .font(.title3)
                        TextField("家族について、理想的な行動を考えて記入してください。", text: $family)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)

                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_family, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_family, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Section {
                        Text("恋人")
                            .font(.title3)
                        TextField("恋人について、理想的な行動を考えて記入してください。", text: $love)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)
                        
                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_love, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_love, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Section {
                        Text("養育")
                            .font(.title3)
                        TextField("養育について、理想的な行動を考えて記入してください。", text: $nurture)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)

                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_nurture, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_nurture, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Section {
                        Text("友人")
                            .font(.title3)
                        TextField("友人について、理想的な行動を考えて記入してください。", text: $friend)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)

                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_friend, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_friend, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Section {
                        Text("仕事")
                            .font(.title3)
                        TextField("仕事について、理想的な行動を考えて記入してください。", text: $work)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)
                        
                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_work, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_work, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Section {
                        Text("成長")
                            .font(.title3)
                        TextField("成長について、理想的な行動を考えて記入してください。", text: $grows)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)
                        
                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                                
                            }
                            ZStack {
                                Picker(selection: $idealLevel_grows, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                                
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_grows, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Section {
                        Text("余暇")
                            .font(.title3)
                        TextField("余暇について、理想的な行動を考えて記入してください。", text: $hoby)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)

                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_hoby, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_hoby, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }

                    Section {
                        Text("メンタリティ")
                            .font(.title3)
                        TextField("メンタリティについて、理想的な行動を考えて記入してください。", text: $mental)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)
                        
                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_mental, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                                
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_mental, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Section {
                        Text("コミュニティ")
                            .font(.title3)
                        TextField("コミュニティについて、理想的な行動を考えて記入してください。", text: $community)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)

                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_community, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_community, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    
                    Section {
                        Text("健康")
                            .font(.title3)
                        TextField("健康について、理想的な行動を考えて記入してください。", text: $health)
                            .font(.system(size: 15))
                            .frame(height: 150, alignment: .topLeading)
                        Text("上記項目の重要度と達成度を１０段階で評価してください")
                        .font(.subheadline)

                        HStack {
                            ZStack {
                                Text("重要度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $idealLevel_health, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                            Spacer()
                            ZStack {
                                Text("達成度")
                                .font(.subheadline)
                                .frame(width: 74, height: 26)
                            }
                            ZStack {
                                Picker(selection: $achivementLevel_health, label: Text("Picker"), content: {
                                   ForEach(data, id:\.self) { value in
                                       Text("\(value)")
                                           .tag(value)
                                   }
                               })
                                .pickerStyle(.menu)
                            }
                        }
                        .listRowSeparator(.hidden)
                        VStack {
                            NavigationLink(
                                destination: ACTValueTrainingSelect_View(family: self.family, idealLevel_family: self.idealLevel_family, achivementLevel_family: self.achivementLevel_family,love: self.love,idealLevel_love: self.idealLevel_love,achivementLevel_love: self.achivementLevel_love,nurture: self.nurture,idealLevel_nurture: self.idealLevel_nurture,achivementLevel_nurture: self.achivementLevel_nurture,friend: self.friend,idealLevel_friend: self.idealLevel_friend,achivementLevel_friend: self.achivementLevel_friend,work: self.work,idealLevel_work: self.idealLevel_work,achivementLevel_work: self.achivementLevel_work,grows:self.grows,idealLevel_grows: self.idealLevel_grows,achivementLevel_grows: self.achivementLevel_grows,hoby:self.hoby,idealLevel_hoby: self.idealLevel_hoby,achivementLevel_hoby: self.achivementLevel_hoby,mental: self.mental,idealLevel_mental: self.idealLevel_mental,achivementLevel_mental: self.achivementLevel_mental,community: self.community,idealLevel_community: self.idealLevel_community,achivementLevel_community: self.achivementLevel_community,health: self.health,idealLevel_health: self.idealLevel_health,achivementLevel_health: self.achivementLevel_health),
                                isActive: $communication,
                                label: {
                                    EmptyView()
                                }).opacity(0)
 
                            Button(action : {communication = true}) {
                                Text("OK")
                            }
//                            .buttonStyle(OK_ButtonStyle())
                        }
                    }
                }
            }
            .navigationTitle("ACT Value Training")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}



struct ACTValueTrainingInput_View_Previews: PreviewProvider {
    static var previews: some View {
        ACTValueTrainingInput_View()
    }
}
