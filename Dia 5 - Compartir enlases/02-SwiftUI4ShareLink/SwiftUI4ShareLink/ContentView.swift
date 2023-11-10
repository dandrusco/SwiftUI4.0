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
        //1. Podemos personalizar mas este ShareLink, agregandole mas parametros entre {}
        ShareLink(item:url){
            //2. Le agregaremos un label que deberemos pasarle dos parametros, un teto y una imagen de SF Symbols
            Label("Compartir", systemImage: "link.icloud")
            //3. Podemos modificar la etiqueta (que muestre solo texto, solo imagen, o ambos)
                .labelStyle(.titleAndIcon)
                //4. Tabien se puede poner un borde y pintarlo 
                .border(.green)
        }
    }
}

#Preview {
    ContentView()
}
