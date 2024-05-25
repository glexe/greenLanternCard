//
//  InfoView.swift
//  IliaCard
//
//  Created by Ilya Gladyshev on 5/1/24.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let iconName: String
    
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
            .frame(height: 50)
            .cornerRadius(30)
            .overlay(
                HStack {
                    Image(systemName: iconName)
                        .foregroundColor(.green)
                    Text(text)
                }
            )
            .padding(.all)
    }
}


struct InfoView_Preview: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Test text ", iconName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
