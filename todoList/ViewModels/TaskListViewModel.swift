//
//  TaskListViewModel.swift
//  todoList
//
//  Created by Antonio Vuono on 08/07/25.
//

import Foundation

class TaskListViewModel: ObservableObject {
    @Published var tasks: [TaskModel] = []
    
    func addTask(title: String) {
        let newTask = TaskModel(id: UUID(), title: title, isCompleted: false)
        
        tasks.append(newTask)
    }
}
