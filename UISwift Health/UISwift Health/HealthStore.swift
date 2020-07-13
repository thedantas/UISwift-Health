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
    
}
