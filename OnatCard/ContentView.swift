//
//  ContentView.swift
//  OnatCard
//
//  Created by Onat KILINÇ on 2.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.09, green:0.63, blue:0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("onat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Onat Kılınç")
                    .font(Font.custom("AntonSC-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+44 123 456 789", imageName: "phone.fill")
                InfoView(text: "onat@email.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
