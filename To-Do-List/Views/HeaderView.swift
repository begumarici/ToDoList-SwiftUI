//
//  HeaderView.swift
//  To-Do-List
//
//  Created by Begüm Arıcı on 17.02.2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                .offset(y: -100)
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
            .offset(y: -100)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: -15, background: .blue)
}
