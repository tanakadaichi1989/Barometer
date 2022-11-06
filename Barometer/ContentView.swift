//
//  ContentView.swift
//  Barometer
//
//  Created by 田中大地 on 2022/11/06.
//

import SwiftUI
import CoreMotion

struct ContentView: View {
    private let altimator = Altimator()
    
    var body: some View {
        Button {
            altimator.startUpdate()
        } label: {
            Text("気圧計を起動")
        }
        .buttonStyle(.borderedProminent)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
