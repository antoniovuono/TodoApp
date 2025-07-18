//
//  TodoTabBar.swift
//  todoList
//
//  Created by user on 18/07/25.
//

import SwiftUI

enum TodoType {
    case created
    case finalized
}

struct TodoTabBar: View {
    @Binding var selectedTab: TodoType
    var createdTasksCount: Int
    var finalizedTasksCount: Int
    
    var body: some View {
        HStack {
            tabButton(title: "Criadas", count: createdTasksCount, tab: .created, color: .blueLight)
            
            Spacer()
            
            tabButton(title: "Concluídas", count: finalizedTasksCount, tab: .finalized, color: .purpleLight)
        }
    }
    
    func tabButton(title: String, count: Int, tab: TodoType, color: Color) -> some View {
        Button(action: {
            selectedTab = tab
        }) {
            HStack (spacing: 6) {
                Text(title)
                    .foregroundStyle(color)
                    .font(Typography.primaryBold(size: 14))
                
                Text("\(count)")
                    .font(Typography.primaryBold(size: 12))
                    .foregroundStyle(.gray200)
                
                    .frame(width: 40, height: 24)
                    .background(
                        Capsule()
                            .fill(Color.gray400)
                    )
                
                
            }
            .padding(.vertical, 6)
            .padding(.horizontal, 10)
            .background(Color.clear)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    @Previewable @State var selectedTab: TodoType = .created
    
    TodoTabBar(selectedTab: $selectedTab, createdTasksCount: 12, finalizedTasksCount: 13)
}
