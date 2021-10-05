//
//  TaskView.swift
//  ToDoApp
//
//  Created by osa on 05.10.2021.
//

import SwiftUI

struct TaskView: View {
    var task: Task
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Name:")
                        .captionStyle()
                    Text(task.name)
                        .boldStyle()
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Date:")
                        .captionStyle()
                    Text(task.date, style: .date)
                }
            }
            Text("Task:")
                .captionStyle()
            Text(task.taskName)
                .italianStyle()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(task.priority.color, lineWidth: 1)
                .shadow(color: task.priority.color, radius: 1)
        )
    }
}

struct Taskview_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: Task(name: "Do some excersises", taskName: "First exersise", date: Date(), priority: .high))
    }
}


