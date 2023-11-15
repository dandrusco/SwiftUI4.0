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
                //4. Si queremos que se expanda modificaremos el frame
                .frame(maxWidth: .infinity)
                //5. Agregaremos un Padding
                .padding()
                .font(.system(size: 60))
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
                //1. Agregaremos una mas aca arriba
                IconView(systemName: "wifi", color: .indigo)
            }
            GridRow{
                IconView(systemName: "wifi", color: .indigo)
                IconView(systemName: "wifi", color: .indigo)
                //2. Eliminaremos esta tercera
                //IconView(systemName: "wifi", color: .indigo)
                //3. Podemos indicar un parametro gridCellColumns para indicar que la IconView ocupe 2 columnas
                    .gridCellColumns(2)
            }
        }
    }
}

#Preview {
    ContentView()
}
