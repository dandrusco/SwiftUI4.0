//
//  ContentView.swift
//  SwiftUI4Gauge
//
//  Created by Danilo Andrusco on 10-11-23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0.5
    
    var body: some View {
        //1. A Gauge le podemos agregar mas informacion, como sus propiedades: Valor actual (currentValueLabel), valor minimo (minimumValueLabel), valor maximo (maximumValueLabel) e incluso el color de la barra
        Gauge(value: progress){
            Text("Estado de la carga")
        } currentValueLabel: {
            Text(progress.formatted(.percent))
        } minimumValueLabel: {
            Text(0.formatted(.percent))
        } maximumValueLabel: {
            Text(1.0.formatted(.percent))
        }
        .tint(.green)
    }
}

#Preview {
    ContentView()
}
