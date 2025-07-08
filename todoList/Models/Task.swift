//
//  Task.swift
//  todoList
//
//  Created by Antonio Vuono on 08/07/25.
//

import Foundation

struct TaskModel: Identifiable, Codable {
    let id: UUID
    var title: String
    var isCompleted: Bool
}
