//
//  CustomResetButtonView.swift
//  ToDo
//
//  Created by Isuru Ariyarathna on 2024-10-02.
//

import SwiftUI

struct CustomResetButtonView: View {
    @Binding var count: Int
    
    var body: some View {
        Button {
            count = 0
        } label : {
            HStack {
                Image(systemName: "delete.right.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Reset Count")
                    .font(.system(size: 16, weight: .bold, design: .default))
            }
            .frame(width: 220, height: 45)
            .background(.white)
            .cornerRadius(10)
        }
    }
}


#Preview {
    CustomResetButtonView(count: .constant(0))
}

