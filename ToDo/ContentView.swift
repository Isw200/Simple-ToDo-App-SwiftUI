//
//  ContentView.swift
//  ToDo
//
//  Created by Isuru Ariyarathna on 2024-10-02.
//

import SwiftUI

struct ContentView: View {
    @State var taskInput = ""
    @State var tasks: [String] = []
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                        .edgesIgnoringSafeArea(Edge.Set.all)
            
            VStack {
                CustomInput(taskInput: $taskInput, tasks: $tasks)
                List{
                    ForEach (tasks, id: \.self) {task in
                        HStack {
                            Text(task)
                            Spacer()
                            Button {
                                let index = tasks.firstIndex(of: task)
                                tasks.remove(at: index!)
                            }label: {
                                Image(systemName: "trash.square.fill")
                                    .resizable()
                                    .frame(width: 27, height: 27)
                                    .symbolRenderingMode(.multicolor)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
