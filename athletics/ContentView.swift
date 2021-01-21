//
//  ContentView.swift
//  athletics
//
//  Created by Abu Anwar MD Abdullah on 6/1/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        ZStack {
//            Image(uiImage: #imageLiteral(resourceName: "login"))
//                .resizable()
//                .frame(maxWidth: .infinity)
//                .aspectRatio(contentMode: .fill)
//                .foregroundColor(.blue)
                
            VStack (alignment: .center) {
                VStack (alignment: .leading){
                    Text("Login to".uppercased())
                        .font(.custom("Poppins", size: 30))
                        .fontWeight(.semibold)
                    Text("mission athletics".uppercased())
                        .font(.custom("Poppins", size: 30))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.7098039216, blue: 1, alpha: 1)))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                
                TextField("Email", text: $email)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color(#colorLiteral(red: 0.8705882353, green: 0.8705882353, blue: 0.8705882353, alpha: 1))))
                    .padding(.top)
                
                TextField("Password", text: $password)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color(#colorLiteral(red: 0.8705882353, green: 0.8705882353, blue: 0.8705882353, alpha: 1))))
                    .padding(.top)
                
                Button(action: {}) {
                        
                    HStack {
                        Spacer()
                        Text("Log In")
                                .font(.custom("Poppins", size: 20))
                                .fontWeight(.medium)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.7098039216, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.568627451, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
                }
                .padding(.top)
                
                Text("By creating an account, you agree to the Privacy Policy and Terms and Conditions of Mission Athletics")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.top)
                
                Text("Or Login with")
                    .foregroundColor(.gray)
//                    .frame(width: UIScreen.main.bounds.width)
                    .padding(.top)

                VStack {
                    Text("Don't have an account?")
//                        .frame(width: UIScreen.main.bounds.width)
                        .padding(.top)

                    Text("Sugn up here")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                        .frame(width: UIScreen.main.bounds.width)
                        .padding(.top)
                        .onTapGesture {

                        }
                }
                
            }
            .padding(.horizontal)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
