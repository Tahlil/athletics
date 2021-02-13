//
//  PrimaryButton.swift
//  athletics
//
//  Created by Abu Anwar MD Abdullah on 29/1/21.
//

import SwiftUI

struct PrimaryButton: View {
    let action: () -> Void
    let text: String
    var body: some View {
        Button(action: action) {
            
            HStack {
                Spacer()
                Text(text)
                    .font(.custom("Poppins", size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.7098039216, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.568627451, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
        }
//        .padding(.top)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(action: {
        }, text: "Sign Up")
    }
}
