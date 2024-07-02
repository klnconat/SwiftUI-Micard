//
//  InfoView.swift
//  OnatCard
//
//  Created by Onat KILINÇ on 2.07.2024.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .frame(height: 50)
                .overlay(
                    HStack {
                        Image(systemName: imageName) // SF Symbol
                            .foregroundColor(.green) // Setting the color of the SF Symbol
                        Text(text)
                            .foregroundColor(.black)
                            .font(Font.custom("AntonSC-Regular", size: 25))
                            .bold()
                    }
                ).padding(.horizontal, 20)
        }
    }
}

#Preview {
    InfoView(text: "Hello", imageName: "phone.fill")
}
