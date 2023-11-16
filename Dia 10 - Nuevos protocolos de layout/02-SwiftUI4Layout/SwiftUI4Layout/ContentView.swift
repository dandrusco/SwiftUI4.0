//
//  ContentView.swift
//  SwiftUI4Layout
//
//  Created by Danilo Andrusco on 16-11-23.
//

import SwiftUI

struct ContentView: View {
   
    @State private var changeLayout = false
    
    var body: some View {
        let layout = changeLayout ?
        AnyLayout(_HStackLayout(spacing:12)):
        AnyLayout(_VStackLayout(spacing:12))
        
        layout{
            Text("Hola, Mundo!")
            Text("Hola, Mundo!")
        }
        //1. vamos a realizar una animacion por defecto, que nos proporcionara cambiar el valor del changeLayout
        .animation(.default, value: changeLayout)
        //2. Le agregaremos el modificador onTapGesture para que cambie el valor cuando se toque
        .onTapGesture {
            //3. con toggle se cambia el valor de false a true y viceversa
            changeLayout.toggle()
        }
    }
}

#Preview {
    ContentView()
}
