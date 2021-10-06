//
//  SortPickerView.swift
//  ToDoApp
//
//  Created by osa on 06.10.2021.
//

import SwiftUI

struct SortPickerView: View {
    
    @ObservedObject var viewModel: TaskViewModel
    
    var body: some View {
        Picker("", selection: $viewModel.sortType) {
            ForEach(SortType.allCases) {
                Text($0.rawValue.capitalized)
                    .tag($0)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
    }
}

struct SortPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SortPickerView(viewModel: TaskViewModel())
    }
}
