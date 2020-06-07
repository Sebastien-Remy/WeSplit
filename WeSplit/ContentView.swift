//
//  ContentView.swift
//  WeSplit
//
//  Created by Sebastien REMY on 07/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   let students = ["Seb", "Charlotte", "Julie", "Nathan"]
    @State private var selectedstudent = "Seb"
    
    var body: some View {
        Picker("Select your student", selection: $selectedstudent) {
            ForEach(0 ..< students.count) {
                Text(self.students[$0])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
