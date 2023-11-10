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
        ShareLink(item:url){
            Label("Compartir", systemImage: "link.icloud")
                .labelStyle(.titleAndIcon)
                .border(.green)
        }
        //1. Podemos hacer uso del presentationDetens para condifurar cuanto se debe expandir la pantalla al compartir
        .presentationDetents([.fraction(0.15), .medium, .large])
        //TODO: en iOS17 no toma estos valores y siempre se abre hasta la mitad
    }
}

#Preview {
    ContentView()
}
