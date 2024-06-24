//
//  ContentView.swift
//  WeSplit
//
//  Created by Ildar Garifullin on 24/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        NavigationStack{
            Button("Tap count: \(tapCount)") {
                tapCount += 1
            }.padding(10)
            Form{
                Section{
                    Text("Hello, world!")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
