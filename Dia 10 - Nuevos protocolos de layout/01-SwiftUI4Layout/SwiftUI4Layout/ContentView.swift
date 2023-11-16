//
//  ContentView.swift
//  SwiftUI4Layout
//
//  Created by Danilo Andrusco on 16-11-23.
//

//1. Agregaremos 2 imagenes en el Assets y las dejaremos en 3X

import SwiftUI

struct ContentView: View {
    
    //2. Crearemos una cariable de estado para realizar cambios en el Layout, en principio de tipo false
    @State private var changeLayout = true
    
    var body: some View {
        //3. Vamos a definir una constante llamada Layout que se basara en el valor que tenga changeLayout
        let layout = changeLayout ?
        //4. si changeLayout es TRUE utilizaremos una HStack a travez de AnyLayout, con un espaciado en 12
        AnyLayout(_HStackLayout(spacing:12)):
        //5. De ser falso nos quedaremos con una VStack
        AnyLayout(_VStackLayout(spacing:12))
        
        //6. Ahora utilizaremos esta variable para poner 2 textos
        layout{
            Text("Hola, Mundo!")
            Text("Hola, Mundo!")
            //7. Ahora nos vamos a la variable de estado y le cambiaremos de false a true para ver como los dos textos ahora se posisionan uno al lado del otro
        }
    }
}

#Preview {
    ContentView()
}
