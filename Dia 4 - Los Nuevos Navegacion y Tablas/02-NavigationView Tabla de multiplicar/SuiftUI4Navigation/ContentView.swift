//
//  ContentView.swift
//  SuiftUI4Navigation
//
//  Created by Danilo Andrusco on 08-11-23.
//

//1. Podemos reutilizar este codidigo para crear la tabla de multiplizar del 5
import SwiftUI

struct ContentView: View {
    
    //2. Creamos una variable para el numero a multiplicar
    let number = 5
    
    var body: some View {
        NavigationView{
            List{
                //3. el ForEach lo cambiaremos del 1...10
                ForEach(1...10, id: \.self){ idx in
                    //4. El Text("Detalle del elemento n° \(idx)") cambiara a... y le agregaremos un font de titulo para agradar el numero del resultado
                    NavigationLink(destination: Text("\(idx*number)").font(.title)){
                        //5. Y el Text("Fila \(idx)") a:
                        Text("\(number) x \(idx)")
                    }
                }
            }
            .listStyle(.plain)
            //5. Tambien modificaremos el titulo a
            .navigationTitle("Tabla del \(number)")
        }
    }
}

#Preview {
    ContentView()
}
