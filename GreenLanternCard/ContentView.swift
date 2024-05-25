//
//  ContentView.swift
//  IliaCard
//
//  Created by Ilya Gladyshev on 5/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.13, green: 0.55, blue: 0.45, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("Photo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
            
                    ).shadow(radius: 5)
                Text("Hal Jordan")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Green Lantern")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "303-444-33-11", iconName: "phone.fill")
                Divider()
                InfoView(text: "greenlantern@gmail.com", iconName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
} 
 
