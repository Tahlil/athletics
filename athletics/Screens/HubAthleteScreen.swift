//
//  HubAthleteScreen.swift
//  athletics
//
//  Created by Abu Anwar MD Abdullah on 13/2/21.
//

import SwiftUI

struct HubAthleteScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                
                //            Header
                ZStack {
                    Image(uiImage: #imageLiteral(resourceName: "header_bg"))
                        .resizable()
                        .frame( maxWidth: .infinity, maxHeight: 110)
                    Text("Andrew’s Hub")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.top)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                //            Time
                HStack {
                    Text("Tuesday")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(uiImage: #imageLiteral(resourceName: "arrow_forword"))
                    }
                    
                    Text("Jul 12th, 2020")
                        .fontWeight(.medium)
                        .padding(.horizontal, 4)
                    
                    Button(action: {}) {
                        Image(uiImage: #imageLiteral(resourceName: "arrow_backward"))
                    }
                    
                    
                }.padding()
                
                //            Cancle and Start card
                VStack (alignment: .leading) {
                    Text("09:00 - 9:20 PM (EST)")
                        .fontWeight(.medium)
                        .padding()
                    
                    HStack {
                        CircleAvatarWithIndicator(image: Image("Mask"), width: 56, isActive: true)
                        
                        Text("With Kobe Bryant")
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Cancle")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(.horizontal, 32)
                                .padding(.vertical, 8)
                            
                        }
                        .background(Color("Warning"))
                        .clipShape(Capsule())
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Text("Start")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(.horizontal, 32)
                                .padding(.vertical, 8)
                            
                        }
                        .background(Color("Primary"))
                        .clipShape(Capsule())
                        
                    }.padding()
                    
                }
                .padding()
                .background(Color(.white))
                .border(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)), width: 1)
                .shadow(color: Color(#colorLiteral(red: 0.7725490196, green: 0.7725490196, blue: 0.7725490196, alpha: 0.16)), radius: 10, x: 0.0, y: 0.0)
                .cornerRadius(8.0)
                .padding()
                
                ScheduleTraningView()
                
                //            Performance Report
                VStack (alignment: .leading) {
                    Text("Performance Report")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    ScrollView (.horizontal, showsIndicators: false)  {
                        HStack {
                            ForEach(0 ..< 5) { item in
                                PerformanceReportCardView()
                                    .padding(.vertical)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                
                //            Drills & Exercises
                
                VStack (alignment: .leading) {
                    Text("Drills & Exercises")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    ScrollView (.horizontal, showsIndicators: false)  {
                        HStack {
                            ForEach(0 ..< 5) { item in
                                ExerciseCardView()
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                }
                
                
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct HubAthleteScreen_Previews: PreviewProvider {
    static var previews: some View {
        HubAthleteScreen()
    }
}


struct ScheduleTraningView: View {
    var body: some View {
        HStack {
            VStack {
                Color("Primary")
                    .frame(width: 10, height: 10)
                    .clipShape(Circle())
                HStack {
                    Divider()
                }
                .frame(height: 50)
                Color("Primary")
                    .frame(width: 10, height: 10)
                    .clipShape(Circle())
                
            }
            .padding(.trailing, 8)
            
            VStack {
                SheduleCardView(trainingDuration: "03:00 PM - 03:15 PM (EST)", isActive: true)
                    .padding(.vertical, 8)
                
                SheduleCardView(trainingDuration: "05:00 PM - 05:15 PM (EST)", isActive: false)
                    .padding(.vertical, 8)
            }
        }
        .padding()
        .cornerRadius(8.0)
    }
}

struct SheduleCardView: View {
    let trainingDuration: String
    let isActive: Bool
    var body: some View {
        HStack {
            Text("03:00 PM - 03:15 PM (EST)")
            Spacer()
            CircleAvatarWithIndicator(image: Image("Mask"), width: 26, isActive: true)
                .padding(.trailing, 4)
            Image(isActive ? "circle" : "circle_inactive")
        }
        .padding()
        .background(Color(.white))
        .shadow(color: Color.black.opacity(0.1), radius: 50, x: 0.0, y: 10)
    }
}

struct PerformanceReportCardView: View {
    var body: some View {
        ZStack (alignment: .top) {
            VStack (alignment: .center) {
                Text("1 request")
                    .font(.callout)
                    .fontWeight(.bold)
                HStack {
                    Text("coach")
                        .font(.callout)
                    
                    Text("5m")
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                
                Text("See Results")
                    .font(.caption)
                    .foregroundColor(Color("Primary"))
                
                
            }
            .padding()
            .padding(.top, 24)
            .background(Color.white)
            .cornerRadius(8.0)
            .shadow(color: Color.black.opacity(0.16), radius: 8, x: 0.0, y: 6)
            
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "Ellipse 1"))
                    .frame(width: 68, height: 68)
                    .clipShape(Circle())
                    .offset(x: 0, y: -34)
                
                Image(uiImage: #imageLiteral(resourceName: "whistle"))
                    .resizable()
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding(.all, 4)
                    .frame(width: 18, height: 18)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .offset(x: 17, y: -4)
            }
        }
        .frame(width: 120)
        .padding(.top, 34)
    }
}

struct ExerciseCardView: View {
    var body: some View {
        VStack (alignment: .leading) {
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "NBA2KBanner"))
                    .resizable()
                    .frame(width: 150)
                    .aspectRatio(1.4, contentMode: .fill)
                    .cornerRadius(10.0)
                
                Color.white
                    .opacity(0.6)
                    .frame(width: 38, height: 38)
                    .clipShape(Circle())
                
                Color.white
                    .frame(width: 28, height: 28)
                    .clipShape(Circle())
                
                Image("play-arrow")
            }
            
            Text("Behind The Back")
                .fontWeight(.medium)
                .padding(.horizontal, 8)
            
            Text("Kobe Bryant")
                .font(.caption)
                .opacity(0.4)
                .padding(.horizontal, 8)
            
        }
        .frame(width: 150)
        .padding(.bottom, 8)
        
    }
}


