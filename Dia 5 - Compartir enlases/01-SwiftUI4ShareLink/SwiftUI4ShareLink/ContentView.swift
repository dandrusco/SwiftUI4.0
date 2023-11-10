//
//  ContentView.swift
//  SwiftUI4ShareLink
//
//  Created by Danilo Andrusco on 10-11-23.
//

import SwiftUI

struct ContentView: View {
    
    //1. Para crear una ShareLink necesitaremos de una URL, para ello crearemos una variale que pertenesera a URL pasandosela como String y diciendole con exclamacion que NO es opcional
    private let url = URL(string: "https://www.tectroya.cl")!
    
    var body: some View {
        //2. Ahora siemplemente creamos el ShareLink pasandole el item la variable url que creamos 
        ShareLink(item:url)
    }
}

#Preview {
    ContentView()
}
