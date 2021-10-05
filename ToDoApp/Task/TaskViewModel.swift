//
//  TaskViewModel.swift
//  ToDoApp
//
//  Created by osa on 05.10.2021.
//

import Foundation

class TaskViewModel: Identifiable, ObservableObject {
    @Published var tasks: [Task] = [
        Task(name: "Do new app", taskName: "for ios", date: Date(timeIntervalSinceReferenceDate: 1619231231.0), priority: .normal)
    ]
    
    @Published var sortType: SortType = .alphabetical
    @Published var idPresented = false
    @Published var searched = ""
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func removeTask(at index: IndexSet) {
        tasks.remove(atOffsets: index)
    }
    
    func sort() {
        switch sortType {
        case .alphabetical:
            tasks.sort { $0.name > $1.name }
        case .date:
            tasks.sort { $0.date > $1.date }
        case .priority:
            tasks.sort { $0.priority.rawValue > $1.priority.rawValue }
        }
    }
}
