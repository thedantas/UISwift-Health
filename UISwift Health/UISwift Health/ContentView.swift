//
//  ContentView.swift
//  UISwift Health
//
//  Created by Andre Costa Dantas on 13/07/20.
//  Copyright © 2020 Andre Costa Dantas. All rights reserved.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    private var healthStore: HealthStore?
    
    init(){
        healthStore = HealthStore()
    }
    var body: some View {
        Text("Hello, World!").padding()
            .onAppear{
                if let healthStore = self.healthStore {
                    healthStore.requestAuthorization{ success in
                        
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
