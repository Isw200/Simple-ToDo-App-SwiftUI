//
//  CustomBottonView.swift
//  ToDo
//
//  Created by Isuru Ariyarathna on 2024-10-02.
//

import SwiftUI

struct CustomBottonView: View {
    @Binding var isBackgroundRed : Bool
    
    var body: some View {
        Button {
            isBackgroundRed.toggle()
        } label: {
            HStack {
                Image(systemName: isBackgroundRed ? "sun.max.circle.fill" : "sun.max")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Change Theme to \(isBackgroundRed ? "Blue" : "Red")")
                    .font(.system(size: 16, weight: .bold, design: .default))
            }
            .frame(width: 220, height: 45)
            .background(isBackgroundRed ? .white : .black)
            .cornerRadius(10)
        }
    }
}

