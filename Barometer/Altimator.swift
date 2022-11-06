//
//  Altimator.swift
//  Barometer
//
//  Created by 田中大地 on 2022/11/06.
//

import Foundation
import CoreMotion

final class Altimator {
    var altimeter: CMAltimeter?
    
    init() {
        altimeter = CMAltimeter()
    }
    
    func startUpdate(completion: @escaping (Double) -> Void) {
        guard let altimeter = altimeter else {
            return
        }
        
        if CMAltimeter.isRelativeAltitudeAvailable() {
            altimeter.startRelativeAltitudeUpdates(to: OperationQueue.main) { data, error in
                if error == nil {
                    let altitude = data?.relativeAltitude.doubleValue
                    guard let pressure = data?.pressure.doubleValue else {
                        return
                    }
                    print("気圧", pressure * 10)
                    completion(pressure * 10)
                } else {
                    // エラー対応
                }
            }
        }
    }
    
    func stopUpdate() {
        altimeter?.stopRelativeAltitudeUpdates()
    }
}
