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
    @State var pressureValue = 0.0
    
    var body: some View {
        VStack {
            Text(String(format: "%.2f",pressureValue))
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("hPa")
                .font(.title)
                .fontWeight(.semibold)
            startButton
            stopButton
        }
    }
    
    private var startButton: some View {
        Button {
            altimator.startUpdate { value in
                self.pressureValue = value
            }
        } label: {
            Text("測定開始")
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var stopButton: some View {
        Button {
            altimator.stopUpdate()
        } label: {
            Text("測定終了")
        }
        .buttonStyle(.bordered)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
