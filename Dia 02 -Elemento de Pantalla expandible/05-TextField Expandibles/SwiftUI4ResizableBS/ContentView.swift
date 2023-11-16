//
//  ContentView.swift
//  SwiftUI4ResizableBS
//
//  Created by Danilo Andrusco on 07-11-23.
//

import SwiftUI

struct ContentView: View {

    @State private var inputText = ""
    
    var body: some View {
        VStack {
            Form {
                Section("Que te parece nuestro curso?"){
                    TextField("Escribe aquí un comentario. ", text: $inputText, axis: .vertical)
                        //1. Otra al ternativa es decirle que parta con 2 lineas y que no deje de crecer mas de 4
                        .lineLimit(2...4)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
