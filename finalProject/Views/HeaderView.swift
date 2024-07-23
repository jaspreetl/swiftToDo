//
//  HeaderView.swift
//  finalProject
//
//  Created by Jaspreet L. on 12/8/23.
//

import SwiftUI

struct HeaderView: View {
    let subtitle: String
    let background: Color
    var body: some View {
        // the header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
            //.rotationEffect(Angle(degrees: -15))
            VStack {
                Text("to do")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text("ta da")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                Text(subtitle)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 90)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(subtitle: "hi :)", 
                   background: .cyan)
    }
}
