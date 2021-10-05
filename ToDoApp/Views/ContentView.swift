//
//  ContentView.swift
//  ToDoApp
//
//  Created by osa on 05.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = TaskViewModel()
    @State var searched = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TaskSeacrhView(viewModel: viewModel, isSearching: false)
                TaskListView(viewModel: viewModel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
