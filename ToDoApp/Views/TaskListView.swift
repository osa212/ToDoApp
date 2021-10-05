//
//  TaskListView.swift
//  ToDoApp
//
//  Created by osa on 05.10.2021.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var viewModel: TaskViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.tasks) { task in
                TaskView(task: task)
            }
            .onDelete {
                viewModel.removeTask(at: $0)
            }
        }.listStyle(InsetListStyle())
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(viewModel: TaskViewModel())
    }
}
