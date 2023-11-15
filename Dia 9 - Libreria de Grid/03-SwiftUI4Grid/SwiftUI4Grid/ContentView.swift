//
//  ContentView.swift
//  SwiftUI4Grid
//
//  Created by Danilo Andrusco on 15-11-23.
//

import SwiftUI

struct IconView: View {

    var systemName = ""
    var color = Color.green
    
    var body: some View {
        VStack {
            Image(systemName: systemName)
                .frame(maxWidth: .infinity)
                .padding()
                //2. Deberemos cambiar el tamaño de 60 a 40
                .font(.system(size: 40))
                .background(in: Rectangle())
                .backgroundStyle(color.gradient)
                .foregroundStyle(.white.shadow(.inner(radius: 3.0, y: 5.0)))
        }
    }
}

struct ContentView: View {
    var body: some View {
        Grid{
            GridRow{
                IconView(systemName: "wifi", color: .indigo)
                IconView(systemName: "wifi", color: .indigo)
                IconView(systemName: "wifi", color: .indigo)
                //1. Podemos agregar un cuarto IconView, vemos que se nos escapa de los margenes
                IconView(systemName: "wifi", color: .indigo)
            }
            GridRow{
                IconView(systemName: "wifi", color: .indigo)
                //3. Le agregaremos una gridCellColumns
                    .gridCellColumns(2)
                IconView(systemName: "wifi", color: .indigo)
                    .gridCellColumns(2)
            }
        }
    }
}

#Preview {
    ContentView()
}
