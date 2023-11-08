//
//  ContentView.swift
//  SwiftUI4MultiDatePicker
//
//  Created by Danilo Andrusco on 07-11-23.
//

import SwiftUI

//2. Creamos la extencion de UIScreen
extension UIScreen{
    //3. Definimos sus propiedades
    static let screenWhidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
    //4. Incluso el rectangulo que se define en altura y anchura
    static let screenSize = UIScreen.main.bounds
}


struct ContentView: View {
    
    @State private var selectedDates: Set<DateComponents> = []
    var body: some View {
        MultiDatePicker("Selcciana las fechas deseadas", selection: $selectedDates)
        //1. Para poder No escribir toda esta linea de codigo podemos crear una extencion de la clase UIScreen, comentaremos esta linea de codigo
            //.frame(height: UIScreen.main.bounds.height*0.5)
        //5. AHora la podemos llamar
            .frame(height: UIScreen.screenHeight*0.5)
    }
}

#Preview {
    ContentView()
}
