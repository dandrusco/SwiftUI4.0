//
//  ContentView.swift
//  SwiftUI4ResizableBS
//
//  Created by Danilo Andrusco on 07-11-23.
//

import SwiftUI

struct ContentView: View {
    
    //3. Crearemos una variable de estado para lo que ingrese el usuario como un comentario
    @State private var inputText = ""
    
    var body: some View {
        VStack {
            //1. Vamos a crear un formulario
            Form {
                //2. Crearemos la seccion con su titulo
                Section("Que te parece nuestro curso?"){
                    //4. Creamos nuestro cuadro para el comentario, indicando el texto a mostrar, la variable que almacenara el texto y por ultimo parametro le diremos que nos permite realizar saltos de liena 
                    TextField("Escribe aquí un comentario. ", text: $inputText, axis: .vertical)
                        //5. Limitaremos el numero de linea, lo que probocara que al salto de linea 7 se generara un Scroll 
                        .lineLimit(6)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
