//
//  TaskListViewModel.swift
//  todoList
//
//  Created by Antonio Vuono on 08/07/25.
//

import Foundation

class TaskListViewModel: ObservableObject {
    @Published var tasks: [TaskModel] = []
    @Published var showTextEmptyValidation: Bool = false
    
    func addTask(title: String) {
        if(title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty) {
            showTextEmptyValidation = true
            return 
        }
        
        let newTask = TaskModel(id: UUID(), title: title, isCompleted: false)
        tasks.append(newTask)
        showTextEmptyValidation = false
    }
}


