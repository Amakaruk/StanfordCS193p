//
//  ContentView.swift
//  StanfordCS193p
//
//  Created by Aaron Makaruk on 1/9/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
            Text("Welcome to CS193p!")
                .font(.largeTitle)
                .foregroundStyle(.green)
            Text("Greetings!")
            Circle()
        }
    }
}

#Preview {
    ContentView()
}
