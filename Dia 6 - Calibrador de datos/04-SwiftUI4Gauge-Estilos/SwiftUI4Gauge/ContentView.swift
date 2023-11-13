//
//  ContentView.swift
//  SwiftUI4Gauge
//
//  Created by Danilo Andrusco on 10-11-23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 67.8

    private let min = 0.0
    private let max = 100.0
    
    var body: some View {
        Gauge(value: progress, in: min...max){
            Text("Estado de la carga")
        } currentValueLabel: {
            Text("\(progress.formatted(.number))%")
        } minimumValueLabel: {
            Text(0.formatted(.percent))
            //2. Corregiremos el valor
                .font(.system(size: 6))
        } maximumValueLabel: {
            Text(1.0.formatted(.percent))
            //2. Corregiremos el segundo valor
                .font(.system(size: 6))
        }
        .tint(.green)
        //1. Ademas de pintarlo podemos agregar eslilos
        .gaugeStyle(.accessoryCircular)
        .scaleEffect(2.5)
    }
}

#Preview {
    ContentView()
}
