//
//  Task.swift
//  todoList
//
//  Created by Antonio Vuono on 03/07/25.
//

import SwiftUI

struct TaskContent: View {
    var isTaskCompleted: Bool
    var taskTitle: String
    let deleteTask: () -> Void
    let toggleTask: () -> Void
    
    
    var body: some View {
        HStack (spacing: 12) {
            Button(action: toggleTask) {
                Group {
                    if !isTaskCompleted {
                        Image(systemName: "circle")
                            .foregroundStyle(.blueLight)
                            .frame(width: 24, height: 24)
                        
                    } else {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundStyle(.blueLight)
                            .frame(width: 24, height: 24)
                    }
                }
            }
            
            Spacer(minLength: 0)
            
            Text(taskTitle)
                .foregroundStyle(.gray100)
                .font(Typography.primaryRegular(size: 14))
                .lineLimit(2)
                .truncationMode(.tail)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .layoutPriority(1)
            
            
            Spacer(minLength: 0)
            
            
            
            Button (action: deleteTask, label: {
                Image(systemName: "trash")
                    .foregroundStyle(.gray300)
                    .frame(width: 24, height: 24)
            }) 
            
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, minHeight: 64, maxHeight: 64)
        .background(Color.gray500)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    TaskContent(isTaskCompleted: true, taskTitle: "Exemplo de tarefa adicionada!", deleteTask: { print("Tarefa deletada!") }, toggleTask: { print("item completado!") })
        .padding(16)
}
