//
//  ContentView.swift
//  Barometer
//
//  Created by 田中大地 on 2022/11/06.
//

import SwiftUI
import CoreMotion

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
