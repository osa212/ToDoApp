//
//  TaskSeacrhView.swift
//  ToDoApp
//
//  Created by osa on 05.10.2021.
//

import SwiftUI

struct TaskSeacrhView: View {
    
    @ObservedObject var viewModel: TaskViewModel
    @State var isSearching = false
    
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .cornerRadius(9)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(red: 1, green: 1, blue: 1))
                    TextField("Search", text: $viewModel.searched)
                    { isSearch in
                        if isSearch {
                            isSearching = true
                        } else {
                            isSearching = false
                        }
                    }.keyboardType(.webSearch)
                        .foregroundColor(.black)
                    
                    if !viewModel.searched.isEmpty {
                        Button {
                            viewModel.searched = ""
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                        }

                    }
                }
                .padding()
            }.frame(width: 310, height: 38)
            .padding()
            .animation(.easeInOut)

            if isSearching {
                Button {
                    hideKeyboard()
                    
                } label: {
                    Text("Cancel")
                }

            }
        }
    }
}

struct TaskSeacrhView_Previews: PreviewProvider {
    static var previews: some View {
        TaskSeacrhView(viewModel: TaskViewModel())
    }
}
