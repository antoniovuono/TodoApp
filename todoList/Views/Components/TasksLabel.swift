//
//  TasksLabel.swift
//  todoList
//
//  Created by Antonio Vuono on 26/06/25.
//

import SwiftUI

struct TasksLabel: View {
    let title: String
    let taskCounter: Int
    let primaryColor: Bool
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundStyle(primaryColor ? .blueLight : .purpleLight)
            
            Text("0")
                .foregroundStyle(.gray200)
                .frame(width: 40, height: 24)
                .background(
                    Capsule()
                        .fill(Color.gray400)
                )
        }
    }
}

#Preview {
    TasksLabel(title: "Concluídas", taskCounter: 1, primaryColor: true)
}
