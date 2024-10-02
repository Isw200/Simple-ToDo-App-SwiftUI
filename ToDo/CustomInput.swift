//
//  CustomInput.swift
//  ToDo
//
//  Created by Isuru Ariyarathna on 2024-10-02.
//

import SwiftUI

struct CustomInput: View {
    @Binding var taskInput : String
    @Binding var tasks : [String]
    
    var body: some View {
        VStack {
            TextField(text: $taskInput, label: {
                Text("Enter Task")
            })
            .padding(15)
            .frame(width: 350, height: 50)
            .background(.white)
            .cornerRadius(10)
            
            Button {
                tasks.append(taskInput)
                taskInput = ""
            } label: {
                Text("Add Task")
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 350, height: 50)
                    .background(.white)
                    .cornerRadius(10)
            }
            
            Button {
                tasks = []
            } label: {
                Text("Clear All")
                    .font(.system(size: 20, weight: .semibold))
                    .frame(height: 40)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
