//
//  StatePicker.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/4/24.
//


import SwiftUI

struct StatePicker: View {
    
    @State private var selectedState = "Alabama"
    let states = [
        "Alabama", "Alaska", "Arizona", "Arkansas", "California",
        "Colorado", "Connecticut", "Delaware", "Florida", "Georgia",
        "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa",
        "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland",
        "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri",
        "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey",
        "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio",
        "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina",
        "South Dakota", "Tennessee", "Texas", "Utah", "Vermont",
        "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"
    ]

    var body: some View {
        VStack {
            Picker("Select a state:", selection: $selectedState) {
                ForEach(states, id: \.self) { state in
                    Text(state)
                }
            }
            .pickerStyle(DefaultPickerStyle())
            .padding()
            
            //Text("Selected State: \(selectedState)")
                //.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StatePicker()
    }
}

