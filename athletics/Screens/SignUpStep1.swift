//
//  SignUpStep1.swift
//  athletics
//
//  Created by Abu Anwar MD Abdullah on 30/1/21.
//

import SwiftUI

struct SignUpStep1: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            
            
            HStack {
                Button(action: {}, label: {
                    Image(uiImage: #imageLiteral(resourceName: "Icon_Arrow-Left"))
                })
                .padding(.all)
                Spacer()
            }
            .padding(.top)
            .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
            
            
            Spacer()
            
            VStack (alignment: .leading, spacing: 16) {
                Text("Step 1/2")
                
                Text("Select your Profile")
                    .font(.title)
                    .fontWeight(.bold)
                
                
                ProfileCard(image: #imageLiteral(resourceName: "whistle"), title: "coach/trainer", text: "Dynamic coaching platform built to develop athletes and to jumpstart your career as a coach or a trainer.", isActice: false)
                
                Text("Or".uppercased())
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                
                ProfileCard(image: #imageLiteral(resourceName: "noun_Basketball"), title: "Athlete", text: "AI-Powered features built to analyze, grow, and sustain your skills to take you to the next level.", isActice: true)
                
                Text("Already have an account?")
                    .foregroundColor(Color(#colorLiteral(red: 0.3176470588, green: 0.4235294118, blue: 0.5058823529, alpha: 1)))
                    .padding(.top)
                    .frame(maxWidth: .infinity)
                
                Text("Log in here")
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.7098039216, blue: 1, alpha: 1)))
                    .padding(.top)
                    .frame(maxWidth: .infinity)
                    .onTapGesture {
                        
                    }
                
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct ProfileCard: View {
    let image: UIImage
    let title: String
    let text: String
    let isActice: Bool
    
    var body: some View {
        HStack {
            Image(uiImage: image)
                .renderingMode(.template)
                .foregroundColor(isActice ? .white : .black)
                .padding()
            
            VStack (alignment: .leading, spacing: 8) {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(isActice ? .white : .black)
                
                Text(text)
                    .fontWeight(.light)
                    .foregroundColor(isActice ? .white : Color(#colorLiteral(red: 0.007843137255, green: 0.1333333333, blue: 0.2274509804, alpha: 1)))
            }
            
        }
        .padding()
        .background(isActice ? Color(#colorLiteral(red: 0, green: 0.7098039216, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.9254901961, green: 0.9607843137, blue: 0.9882352941, alpha: 1)))
        .cornerRadius(25.0)
    }
}



struct SignUpStep1_Previews: PreviewProvider {
    static var previews: some View {
        SignUpStep1()
    }
}
