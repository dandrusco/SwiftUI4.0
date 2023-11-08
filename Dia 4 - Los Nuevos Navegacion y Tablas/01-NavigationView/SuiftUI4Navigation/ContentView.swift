//
//  ContentView.swift
//  SuiftUI4Navigation
//
//  Created by Danilo Andrusco on 08-11-23.
//

//1. En versiones anteriores utilizamos el NavigationView, a contar de Swift4 nos recomienda utilizar NavigationStack o NavigationSplitView
import SwiftUI

struct ContentView: View {
    var body: some View {
        //2. Partiremos creando una NavigationView para ver como ha cambiado la sintanxis
        NavigationView{
            //3. A modo de ejemplo le pondremos una lista que recorrera un bucle for para agregar 8 elementos
            List{
                ForEach(1...8, id: \.self){ idx in
                    //4. Pondremos un NavigationLink (profundizaremos mas adelante)
                    NavigationLink(destination: Text("Detalle del elemento n° \(idx)")){
                        //5. A cada NavigationLink le pondremos un texto de acuerdo a su posicion
                        Text("Fila \(idx)")
                    }
                }
            }
            //6. A la lista le podemos agregar un modificador para cambiarle su estilo
            .listStyle(.plain)
            //7. Tambien le podemos podemos agregar un titulo a la barra
            .navigationTitle("Tabla de valores")
        }
    }
}

#Preview {
    ContentView()
}
