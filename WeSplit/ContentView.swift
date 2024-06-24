//
//  ContentView.swift
//  WeSplit
//
//  Created by Ildar Garifullin on 24/06/2024.
//

import SwiftUI

struct ContentView: View {
    let students = ["Anna", "Ivan", "Olga"]
    @State private var selectedStudent = "Olga"
    
    var body: some View {
        NavigationStack{
            Picker("Select your student", selection: $selectedStudent, content: {
                ForEach(students, id: \.self) {
                    Text($0)
                }
            })
            Form{
                Section{
                    TextField("Enter your name", text:$selectedStudent)
                }
                Section{
                    Text("Hello, your name is: \(selectedStudent)!")
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
