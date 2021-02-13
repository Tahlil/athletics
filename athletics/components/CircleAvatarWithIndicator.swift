//
//  CircleAvatarWithIndicator.swift
//  athletics
//
//  Created by Abu Anwar MD Abdullah on 12/2/21.
//

import SwiftUI

struct CircleAvatarWithIndicator: View {
    let image: Image
    let width: CGFloat
    let isActive: Bool
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .aspectRatio(1, contentMode: .fit)
            
            
            if (isActive) {
                Color("ActiveColor")
                    .frame(width:  10, height:  10)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .offset(x: (width/3.1), y: (width/2.8))
            }
        }
        .frame(width: width)
    }
}
