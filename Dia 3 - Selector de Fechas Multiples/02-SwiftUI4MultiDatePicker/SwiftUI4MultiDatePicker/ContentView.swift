//
//  ContentView.swift
//  SwiftUI4MultiDatePicker
//
//  Created by Danilo Andrusco on 07-11-23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedDates: Set<DateComponents> = []
    var body: some View {
        MultiDatePicker("Selcciana las fechas deseadas", selection: $selectedDates)
        //1. Pera que el calendario no ocupe el 100% de la pantalla podemos utilizar un frame para darle la altura y la anchura
            .frame(height: 400)
    }
}

#Preview {
    ContentView()
}
