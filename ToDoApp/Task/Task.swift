//
//  Task.swift
//  ToDoApp
//
//  Created by osa on 05.10.2021.
//

import SwiftUI

struct Task: Identifiable, Equatable {

    var id: String = UUID().uuidString
    let name: String
    let taskName: String
    let date: Date
    let priority: Priority
    
    static func == (lhs: Task, rhs: Task) -> Bool {
        return true
    }
}

enum Priority: Int, Identifiable, CaseIterable {
    
    var id: Int { rawValue }
    
    case normal, medium, high
    
    var title: String {
        switch self {
        case .normal: return "Normal"
        case .medium: return "Medium"
        case .high: return "High"
        }
    }
    
    var color: Color {
        switch self {
        case .normal: return .white
        case .medium: return .blue
        case .high: return .red
        }
    }
}

enum SortType: String, Identifiable, CaseIterable {
    var id: String { rawValue }
    
    case alphabetical, date, priority
}
