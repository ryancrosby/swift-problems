//
//  ContentView.swift
//  App
//
//  Created by Ryan Crosby on 7/29/23.
//

import Solver
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Solver: \(Solver.version)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
