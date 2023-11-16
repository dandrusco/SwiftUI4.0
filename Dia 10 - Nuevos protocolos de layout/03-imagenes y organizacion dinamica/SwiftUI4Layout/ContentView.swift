//
//  ContentView.swift
//  SwiftUI4Layout
//
//  Created by Danilo Andrusco on 16-11-23.
//

import SwiftUI

struct ContentView: View {
   
    @State private var changeLayout = false
    
    var body: some View {
        let layout = changeLayout ?
        AnyLayout(_HStackLayout(spacing:12)):
        AnyLayout(_VStackLayout(spacing:12))
        
        layout{
            //1. Reemplazaremos los dos textos por las dos imagenes que deberemos redimenciar a nuestro gusto
            /*Text("Hola, Mundo!")
            Text("Hola, Mundo!")*/
            Image("JB")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 350, maxHeight: 250)
                .clipped()
            Image("biblioteca_plain")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 350, maxHeight: 250)
                .clipped()
        }
        .animation(.default, value: changeLayout)
        .onTapGesture {
            changeLayout.toggle()
        }
    }
}

#Preview {
    ContentView()
}
