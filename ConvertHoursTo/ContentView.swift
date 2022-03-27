//
//  ContentView.swift
//  ConvertHoursTo
//
//  Created by Vanessa T Tavernari on 04/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var hour = ""
    
    var hourInMinute: Int {
        let hourValue = Double(hour) ?? 0.0
        let minute = Int(hourValue * 60)
        return minute
    }
    
    var hourInSecond: Int {
        let hourValue = Double(hour) ?? 0.0
        let second = Int(hourValue * 3600)
        return second
    }
    
    var hourInMillisecond: Int {
        let hourValue = Double(hour) ?? 0.0
        let millisecond = Int(hourValue * 3600000)
        return millisecond
    }
    
    var body: some View {
        NavigationView{
        Form{
            Section (header: Text("Quantas horas você quer converter?")) {
                TextField("Hours", text: $hour)
                    .keyboardType(.decimalPad)
            }
            
            Section (header: Text("Resultado em minutos")) {
                Text("\(hourInMinute)")
            }
            
            Section (header: Text("Resultado em segundos")) {
                Text("\(hourInSecond)")
            }
            
            Section (header: Text("Resultado em milesegundos")) {
                Text("\(hourInMillisecond)")
            }
        }
        .navigationTitle("Converta horas")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
