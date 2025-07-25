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
    
    func deleteTask(taskId: UUID) {
        tasks.removeAll(where: { $0.id == taskId })
    }
    
    func toggleTask(taskId: UUID)  {
        if let index = tasks.firstIndex(where: { $0.id == taskId }) {
            tasks[index].isCompleted = !tasks[index].isCompleted
        }
    }
    
    var cratedTasksCount: Int {
        return tasks.filter({ !$0.isCompleted }).count
    }
    
    var finishedTasksCount: Int {
        return tasks.filter({ $0.isCompleted }).count
    }
}


