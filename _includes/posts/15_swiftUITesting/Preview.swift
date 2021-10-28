//
//  Preview.swift
//
//  Created by Mauricio Chirino on 24/10/21.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let devices: [String] = [
            "iPhone 8",
            "iPhone 11 Pro Max",
            "iPhone 13 mini"
        ]

        Group {
            ForEach(devices, id: \.self) { name in
                ForEach(ColorScheme.allCases, id: \.self) { mode in
                    ContentView()
                        .previewDevice(PreviewDevice(rawValue: name))
                        .previewDisplayName(name)
                        .environment(\.colorScheme, mode)
                }
            }
        }
    }
}

