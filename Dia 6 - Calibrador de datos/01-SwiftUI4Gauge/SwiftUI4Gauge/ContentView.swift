//
//  ContentView.swift
//  SwiftUI4Gauge
//
//  Created by Danilo Andrusco on 10-11-23.
//

import SwiftUI

struct ContentView: View {
    
    //1. Vamos a recrear una barra de progreso, para ello crearemos una variable de estado para el progreso, en este caso al 50%
    @State private var progress = 0.5
    
    var body: some View {
        //2. Apple creo Gauge, que nos permite mostrar un progreeso de una forma mas rapida, como valor le pasaremos la variable progress
        Gauge(value: progress){
            Text("Estado de la carga")
        }
    }
}

#Preview {
    ContentView()
}
