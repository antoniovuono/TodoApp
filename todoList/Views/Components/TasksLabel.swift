//
//  TasksLabel.swift
//  todoList
//
//  Created by Antonio Vuono on 26/06/25.
//

import SwiftUI

enum TasksLabelStyle {
    case primary, secondary
    
    var titleColor: Color {
        switch self {
          case .primary: return .blueLight
          case .secondary: return .purpleLight
        }
    }
}

struct TasksLabel: View {
    let title: String
    let taskCounter: Int
    var style: TasksLabelStyle = .primary
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundStyle(style.titleColor)
            
            Text("\(taskCounter)")
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
    TasksLabel(title: "Concluídas", taskCounter: 1, style: .primary)
}

