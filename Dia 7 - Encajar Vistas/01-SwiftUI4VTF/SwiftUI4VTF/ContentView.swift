//
//  ContentView.swift
//  SwiftUI4VTF
//
//  Created by Danilo Andrusco on 13-11-23.
//

import SwiftUI

struct ContentView: View {
    //1. Copiaremos el codigo que estan en la pagina de apple para realizar las pruebas
    var uploadProgress: Double = 0.5

    var body: some View {
        ViewThatFits(in: .horizontal) {
            //2. La ViewThatFits lo que hace es crear una HStack de manera horizontal donde pondremos un texto y la barra de progreso
            HStack {
                Text("\(uploadProgress.formatted(.percent))")
                ProgressView(value: uploadProgress)
                    .frame(width: 100)
            }
            //3. Pero si en el formato horizontal no caen una al lado de otra, la pondra una encima de la otra
            ProgressView(value: uploadProgress)
                .frame(width: 100)
            Text("\(uploadProgress.formatted(.percent))")
        }
    }
}

#Preview {
    ContentView()
}
