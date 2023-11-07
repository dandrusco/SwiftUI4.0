//
//  ContentView.swift
//  SwiftUI4MultiDatePicker
//
//  Created by Danilo Andrusco on 07-11-23.
//

import SwiftUI

struct ContentView: View {
    
    //1. Crearemos un estado para guardar las fechas que seleccione el usario, para ello lo crearemos como un conjunto de DateComponents ya que es ese el que se nos solicitara para crear un MultiDatePicker
    @State private var selectedDates: Set<DateComponents> = []
    var body: some View {
        //2. Utilizaremos MultiDatePicker para poder selecciar multiples fechas, pasandole la seleccion con el conjunto de datos creados en el punto 1, pero como es un estado debe anteponerse el signo dolar
        MultiDatePicker("Selcciana las fechas deseadas", selection: $selectedDates)
    }
}

#Preview {
    ContentView()
}
