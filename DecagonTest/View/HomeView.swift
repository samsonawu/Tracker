//
//  HomeView.swift
//  DecagonTest
//
//  Created by Samson Awu on 24/09/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var task = ""
    @State var isAllDay = false
    @State var startDate = Date.now
    @State var endDate = Date.now
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(.top)
              
            VStack{
                //
                
                //Title
                HStack{
                    Text("Title")
                    Spacer()
                    Image(systemName: "calendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    Image(systemName: "pencil")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .padding(.top, -5)
                //Text
                
                ZStack{
                    Rectangle()
                        .frame(height: 100)
                        .cornerRadius(15)
                    HStack{
                        GeometryReader { geo in
                            Text("I would like to take this opportinity to thank you for providing me with this golden opportunity")
                                .font(.system(size: 10, weight: .semibold))
                                .allowsTightening(true)
                                .lineLimit(10)
                                .padding()
                                
                        }
                    }
                    .background(.green)
                    .clipped()
                    .cornerRadius(15)
                    .frame(height: 100)
                }
                
                //Icons
                HStack{
                    Icons(name: "photo")
                    Icons(name: "bell")
                    Icons(name: "paintpalette")
                    Icons(name: "menubar.arrow.down.rectangle")
                    
                    Spacer()
                    Icons(name: "arrow.counterclockwise")
                    Icons(name: "arrow.clockwise")

                    Image(systemName: "ellipsis")
                        .resizable()
                        .rotationEffect(.degrees(-90))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                }
                .padding(.all, 10)
                .background(.green)
                .cornerRadius(15)
                
                HStack{
                    Icons(name: "clock")
                    
                    Text("July 23, 2022")
                        .font(.system(size: 12, weight: .semibold))
                    
                    Text("12:00 AM")
                        .font(.system(size: 12, weight: .semibold))
                    Spacer()
                    Toggle("", isOn: $isAllDay)
                    Text("All day")
                        .font(.system(size: 12, weight: .semibold))
                }
                .padding(.bottom, 5)
                
                HStack{
                    Text("Does not repeat")
                        .font(.system(size: 12, weight: .semibold))
                        .padding(.leading, 30)
                    Spacer()
                }
                HStack{
                    Icons(name: "clock")
                    
                    DatePicker("", selection: $startDate, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                    Text("-")
                    DatePicker("", selection: $endDate, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                    Spacer()
                    Text("1hr:00:00")
                        .font(.system(size: 12, weight: .semibold))
                        .padding(.all, 10)
                        .background(.purple)
                        .clipped()
                        .cornerRadius(10)
                }
                .padding(.bottom, 5)
                
                HStack{
                    Text("Task Created")
                    Spacer()
                    Icons(name: "arrow.up.arrow.down")
                }
                .padding()
              
                ScrollView{
                    VStack{
                //Tasks list
                        TaskItem(item: Text("Contact the CEO of Decagon").font(.system(size: 12, weight: .semibold)), backgroundColor: .gray)
                        TaskItem(item: Text("Design the onboarding view of task tracker app").font(.system(size: 12, weight: .semibold)), backgroundColor: .purple)
                        TaskItem(item: Text("Remind the technical team").font(.system(size: 12, weight: .semibold)), backgroundColor: .indigo)
                        TaskItem(item: Text("Decagon test").font(.system(size: 12, weight: .semibold)), backgroundColor: .cyan)
                    }
                }
                
               
                        HStack{
                            Spacer()
                            VStack{
                                TaskIndicator(height: 20, color: .orange)
                                Text("Task 1")
                                    .font(.system(size: 10, weight: .semibold))
                            }
                          
                           Spacer()
                            
                            VStack{
                                TaskIndicator(height: 40, color: .purple)
                                Text("Task 2")
                                    .font(.system(size: 10, weight: .semibold))
                            }
                            
                            Spacer()
                            VStack{
                                TaskIndicator(height: 20, color: .green)
                                Text("Task 3")
                                    .font(.system(size: 10, weight: .semibold))
                            }

                            Group{
                                Spacer()
                                VStack{
                                    TaskIndicator(height: 60, color: .pink)
                                    Text("Task 4")
                                        .font(.system(size: 10, weight: .semibold))
                                }

                                Spacer()
                                VStack{
                                    TaskIndicator(height: 70, color: .yellow)
                                    Text("Task 5")
                                        .font(.system(size: 10, weight: .semibold))
                                }

                                Spacer()
                                VStack{
                                    TaskIndicator(height: 90, color: .green)
                                    Text("Task 6")
                                        .font(.system(size: 10, weight: .semibold))
                                }
                                Spacer()
                            }

                        }
                Spacer()
                
            }
            .padding()
            .navigationBarTitle("Task Tracker", displayMode: .inline)
            .navigationBarItems(trailing:
                                           Button(action: {
                  

                   }) {
                       Image("person")
                                .resizable()
                                .frame(width:30, height: 30)
                                .clipShape(Circle())


                   })
        }
       
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
