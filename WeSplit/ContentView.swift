//
//  ContentView.swift
//  WeSplit
//
//  Created by Sebastien REMY on 07/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var percentageSelected = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[percentageSelected])
        let orderAmount = Double(checkAmount) ?? 0
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    Picker("Nummber of peoplest", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section (header: Text("How much tip you want to leave")) {
                    Picker("Tip Percentage", selection: $percentageSelected) {
                        ForEach(0..<tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])")
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    Text ("$\(totalPerPerson, specifier: "%.2F")")
                }
            }
                
            .navigationBarTitle("We Split")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
