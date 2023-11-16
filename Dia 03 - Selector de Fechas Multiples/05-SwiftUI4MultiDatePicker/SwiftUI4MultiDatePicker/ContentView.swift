//
//  ContentView.swift
//  SwiftUI4MultiDatePicker
//
//  Created by Danilo Andrusco on 07-11-23.
//

import SwiftUI

extension UIScreen{
    static let screenWhidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
    static let screenSize = UIScreen.main.bounds
    //2. Definiremos una nueva propiedad que sea el 50% de la pantalla
    static let halfScreenHeight = UIScreen.main.bounds.height*0.5
}


struct ContentView: View {
    
    @State private var selectedDates: Set<DateComponents> = []
    var body: some View {
        MultiDatePicker("Selcciana las fechas deseadas", selection: $selectedDates)
        //1. Podemos simplificarla aun mas, para ello la comentaremos esta linea
            //.frame(height: UIScreen.screenHeight*0.5)
        //3. Quedando asi:
            .frame(height: UIScreen.halfScreenHeight)
    }
}

#Preview {
    ContentView()
}
