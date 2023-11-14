//
//  ContentView.swift
//  SwiftUI4ShareLink
//
//  Created by Danilo Andrusco on 10-11-23.
//

//1. Me quedare con el ejemplo del dia 5

import SwiftUI

struct ContentView: View {
    
    private let url = URL(string: "https://www.tectroya.cl")!
    
    var body: some View {
        //2. Pondremos un VStack
        VStack {
            ShareLink(item:url){
                Label("Compartir", systemImage: "link.icloud")
                    .labelStyle(.titleAndIcon)
                    .border(.green)
            }
            .presentationDetents([.fraction(0.15), .medium, .large])
            //TODO: en iOS17 no toma estos valores y siempre se abre hasta la mitad
            
            //2. Pondremos una imagen mas
            Image(systemName: "link.icloud")
                .frame(width: 150, height: 150)
                .font(.system(size: 60))
                //3. Crearemos un rectangulo de color verde pero le agregaremos una gradiente al color
                .background(in: Rectangle())
                .backgroundStyle(.green.gradient)
                //4. Le cambiaremos el color al icono a blanco
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
