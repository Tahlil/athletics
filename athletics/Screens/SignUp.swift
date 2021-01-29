//
//  SignUp.swift
//  athletics
//
//  Created by Abu Anwar MD Abdullah on 22/1/21.
//

import SwiftUI

struct SignUp: View {
    @State private var full_name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Step 2/2")
                .font(.custom("Poppins", size: 15))
            Text("Create your account with email")
                .font(.custom("Poppins", size: 24))
                .fontWeight(.semibold)
            
            TextField("Full Name", text: $full_name)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color(#colorLiteral(red: 0.8705882353, green: 0.8705882353, blue: 0.8705882353, alpha: 1))))
                .padding(.top)
            
            TextField("Email", text: $email)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color(#colorLiteral(red: 0.8705882353, green: 0.8705882353, blue: 0.8705882353, alpha: 1))))
                .padding(.top)
            
            TextField("Password", text: $password)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color(#colorLiteral(red: 0.8705882353, green: 0.8705882353, blue: 0.8705882353, alpha: 1))))
                .padding(.top)
            
            HStack {
                Text("Sport")
                    .font(.system(size: 16))
                    .foregroundColor(Color(#colorLiteral(red: 0.7490196078, green: 0.7490196078, blue: 0.7490196078, alpha: 1)))
                
                Spacer()
                
                Image(systemName: "arrowtriangle.down.fill")
                    .foregroundColor(Color(#colorLiteral(red: 0.631372549, green: 0.631372549, blue: 0.631372549, alpha: 1)))
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color(#colorLiteral(red: 0.8705882353, green: 0.8705882353, blue: 0.8705882353, alpha: 1))))
            .padding(.top)
            
            Button(action: {}) {
                    
                HStack {
                    Spacer()
                    Text("Sign Up")
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
            
            

            VStack {
                Text("Or Connect with")
                    .foregroundColor(.gray)
                    .padding(.top)
                
                Text("Already have an account?")
                    .padding(.top)

                Text("Log in here")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding(.top)
                    .onTapGesture {

                    }
            }
            .frame(maxWidth: .infinity)
            
        }
        .padding(.horizontal)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
