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
        //1. Como tenemos diferentes tipos de tamaño en los iphone, 400 no seria el lo mismo para un iphone SE como para un Pro Max, para ello utilizaremos valores relativos a la altura de la pantalla UIScreen(define las propiedades del hardware), main(pantalla principal), bounds (el rectangulo en pixeles)
            .frame(height: UIScreen.main.bounds.height*0.5)
    }
}

#Preview {
    ContentView()
}
