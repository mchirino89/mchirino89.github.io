//
//  InstructionsView.swift
//
//  Created by Mauricio Chirino on 23/10/21.
//

import SwiftUI

struct ItemRow: View {
    let stepData: String
    var body: some View {
        HStack {
            let icon = String(stepData.last ?? Character(""))
            let name = stepData.dropLast()
            Text(name)
            Spacer()
            Text(icon)
        }
    }
}

struct ContentView: View {
    var stepsDataSource: [String] = [
        "Select audio file 🎶",
        "Polish it 🦻🏽",
        "Publish it 📢"
    ]

    var body: some View {
        VStack {
            Text("Steps!").font(.title2).bold()
            List {
                ForEach(stepsDataSource, id: \.self) { stepData in
                    ItemRow(stepData: stepData)
                }
            }
        }.background(Color(.systemBackground))
    }
}