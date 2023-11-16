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
        //1. A contar de Swift4, Apple nos recomienda utilizar NavigationStack o NavigationSplitView en vez de la NavigationView, asi que la cambiaremos por la NavigationStack
        NavigationStack{
            List{
                ForEach(1...10, id: \.self){ idx in
                    //2. Si queremos que la vista de destino incluya mas de un texto, o ponerle imagenes, etc deberemos modificarla agregandole unas llaves de apretura { a la NavigationLink y cerrando la llave con su contenido } y eliminando destination, deberemos agregar un label que incluya el texto a mostrar
                    NavigationLink{
                        //3. Podemos incluso agregar una VStack para aplilar
                        VStack{
                            //4. Agregaremos el mismo texto para que nos recuerde que opcion marcamos para entrear
                            Text("\(number) x \(idx) =")
                            Text("\(idx*number)")
                                .font(.title)
                                //5. Le agregaremos que el resultado este en negrita
                                .bold()
                        }
                    } label: {
                        Text("\(number) x \(idx)")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Tabla del \(number)")
        }
    }
}

#Preview {
    ContentView()
}
