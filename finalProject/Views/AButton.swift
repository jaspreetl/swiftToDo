//
//  AButton.swift
//  finalProject
//
//  Created by Jaspreet L. on 12/8/23.
//

import SwiftUI

struct AButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // functionality to occur when button is pressed
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .bold()
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct AButton_Previews: PreviewProvider {
    static var previews: some View {
        AButton(title: "Value",
                background: .purple) {
            // functionality //
        }
    }
}
