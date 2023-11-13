//
//  ContentView.swift
//  SwiftUI4Gauge
//
//  Created by Danilo Andrusco on 10-11-23.
//

import SwiftUI

struct ContentView: View {
    
    //1. Vamos a mejrar mas este codigo, el progreso lo pondremos a un 67.8
    @State private var progress = 67.8
    //2. Crearemos dos constantes para el vamor minimo y maximo
    private let min = 0.0
    private let max = 100.0
    
    var body: some View {
        //3. A Gauge le agregaremos un segundo parametro para indicarle el min y max
        Gauge(value: progress, in: min...max){
            Text("Estado de la carga")
        } currentValueLabel: {
            //4. Como son valores entero deberemos cambiar percent por number
            Text("\(progress.formatted(.number))%")
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
