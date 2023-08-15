//
//  Home.swift
//  App
//
//  Created by Ryan Crosby on 7/29/23.
//

import SwiftUI

struct Problem: Identifiable {
    var id: UUID = .init()
}

var problems: [Problem] = [
    .init(),
    .init()
]

struct Home: View {
    var body: some View {
        NavigationStack {
            List(problems) { problem in
                NavigationLink {
                    EmptyView()
                } label: {
                    Text(problem.id.uuidString)
                }

            }
        }
    }
}

#Preview {
    Home()
}
