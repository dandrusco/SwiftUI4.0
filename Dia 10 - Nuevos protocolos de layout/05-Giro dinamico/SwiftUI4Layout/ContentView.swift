//
//  ContentView.swift
//  SwiftUI4Layout
//
//  Created by Danilo Andrusco on 16-11-23.
//

import SwiftUI

struct ContentView: View {
   
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        //1. Para poder ver el cambio podemos cambiar el .regular por .compact
        let layout = (horizontalSizeClass == .regular) ?
        AnyLayout(_HStackLayout(spacing:12)):
        AnyLayout(_VStackLayout(spacing:12))
        
        layout{
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
        .animation(.default, value: horizontalSizeClass)
    }
}

#Preview {
    ContentView()
}
