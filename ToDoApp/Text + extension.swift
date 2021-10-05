//
//  Text + extension.swift
//  ToDoApp
//
//  Created by osa on 05.10.2021.
//

import SwiftUI

extension Text {
    func captionStyle() -> some View {
        self.font(.caption)
            .foregroundColor(.secondary)
    }
    
    func boldStyle() -> some View {
        self.font(.system(size: 20, weight: .bold))
    }
    
    func italianStyle() -> some View {
        self.font(.system(size: 15, weight: .bold))
            .italic()
    }
}
