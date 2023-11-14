//
//  ContentView.swift
//  SwiftUI4ShareLink
//
//  Created by Danilo Andrusco on 10-11-23.
//

import SwiftUI

struct ContentView: View {
    
    private let url = URL(string: "https://www.tectroya.cl")!
    
    var body: some View {
        VStack {
            ShareLink(item:url){
                Label("Compartir", systemImage: "link.icloud")
                    .labelStyle(.titleAndIcon)
                    .border(.green)
            }
            .presentationDetents([.fraction(0.15), .medium, .large])
            //TODO: en iOS17 no toma estos valores y siempre se abre hasta la mitad
            
            Image(systemName: "link.icloud")
                .frame(width: 150, height: 150)
                //1. Agrandaremos un poco mas la imagen de 60 a 80
                .font(.system(size: 80))
                .background(in: Rectangle())
                .backgroundStyle(.green.gradient)
                //2. Al icoono le podemos agregar un segundo parametro de sombras interno cambiando de Drop a Inner
                .foregroundStyle(.white.shadow(.inner(radius: 3.0, x: 5.0)))
        }
    }
}

#Preview {
    ContentView()
}
