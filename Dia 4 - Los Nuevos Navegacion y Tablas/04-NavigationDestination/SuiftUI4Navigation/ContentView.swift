//
//  ContentView.swift
//  SuiftUI4Navigation
//
//  Created by Danilo Andrusco on 08-11-23.
//

import SwiftUI

struct ContentView: View {
    
    let number = 5
    
    var body: some View {
        //1. Como podemos ver entre la NavigationStack y la antigua NavigationView no existen cambios, pero eso no es del todo cierto, para ello crearemos una lista y en su interior una NavigationLink con un valor de texto(String)
        NavigationStack{
            List{
                NavigationLink(value: "Soy un Texto"){
                    //2. Le agregaremos un texto a la celda
                    Text("Fila de texto")
                }
                //3. Crearemos otro NavigationLink con un valor de Color verde
                NavigationLink(value: Color.green){
                    Text("Fila de color")
                }
            }
            //4. Le crearemos el estilo y el titulo
            .listStyle(.plain)
            .navigationTitle("Ejemplo heterogéneo")
            //5. Ahora viene lo nuevo, podemos agregar un NavegationDestination para el String
            .navigationDestination(for: String.self) { item in
                //6. Mostrara un texto
                Text("Esta es la vista del detalle del elemento '\(item)'")
            }
            //7. podemos agregar ahora el otro navigationDestination en este caso para el Color
            .navigationDestination(for: Color.self) { item in
                //8. Mostrara un circulo de color
                item.clipShape(Circle())
            }
            //9. Esa es la gran diferencia de la NavigationStack vs la NavigationView, que nos permite separar la ingesta de datos por un lado, de la programacion de la vista de destino
        }
    }
}

#Preview {
    ContentView()
}
