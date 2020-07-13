//
//  HealthStore.swift
//  UISwift Health
//
//  Created by Andre Costa Dantas on 13/07/20.
//  Copyright © 2020 Andre Costa Dantas. All rights reserved.
//

import Foundation
import HealthKit

class HealthStore{
    
    var healthStore: HKHealthStore?
    
    init(){
        if HKHealthStore.isHealthDataAvailable(){
            healthStore = HKHealthStore()
        }
    }
    func requestAuthorization(completion: @escaping(Bool) -> Void) {
        let stepType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
        
        guard let healthStore = self.healthStore else { return completion(false)}
        
        healthStore.requestAuthorization(toShare: [], read: [stepType]) {(success, error) in
            completion(success)
        }
    }
}
