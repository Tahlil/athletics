//
//  Welcome.swift
//  athletics
//
//  Created by Abu Anwar MD Abdullah on 29/1/21.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "michael-jordan-clean-wallpaper-preview"))
                .resizable()
            
            Color(.black)
                .opacity(0.5)
            
            VStack (alignment: .leading) {
                Spacer()
                VStack (alignment: .leading) {
                    Text("Take Your".uppercased())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    HStack {
                        Text("Skills ".uppercased())
                            .foregroundColor(.blue)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("To the".uppercased())
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    
                    Text("Next Level".uppercased())
                        .foregroundColor(.blue)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                }
                Spacer()
                Spacer()
                
                PrimaryButton(action: {
                    
                }, text: "Sign Up")
                
                VStack {
                    Text("Already have an account?")
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    Text("Log in here")
                        .fontWeight(.medium)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding(.top, 4)
                        .onTapGesture {
                            
                        }
                }.frame(maxWidth: .infinity)
                
                Spacer()
                
            }.padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
