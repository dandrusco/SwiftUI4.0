//
//  ContentView.swift
//  SwiftUI4VTF
//
//  Created by Danilo Andrusco on 13-11-23.
//

import SwiftUI

struct ContentView: View {
    //1. Hora lo realizaremos nosotros definiendo una ViewThatFits para la VStack y la otra para la HStack
    var body: some View {
        ViewThatFits{
            VStack{
                
            }
            //2. Definiremos una altura maxima en vertical de 300 pixeles
            .frame(maxHeight: 300)
            HStack{
                
            }
            //2. Definiremos una altura maxima en horizontal de 100 pixeles
            .frame(maxHeight: 100)
        }
    }
}

#Preview {
    ContentView()
}
