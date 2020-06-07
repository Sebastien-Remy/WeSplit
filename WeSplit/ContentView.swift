//
//  ContentView.swift
//  WeSplit
//
//  Created by Sebastien REMY on 07/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap count \(tapCount)") {
        self.tapCount += 1
    }
    .navigationBarTitle("Swift UI", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
