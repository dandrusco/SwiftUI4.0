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
                //2. Como hay iconos mas grandes que otro deberemos indicarle la altura
                .frame(maxWidth: .infinity, maxHeight: 80)
                .padding()
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
                //1. Para darle mas realismo modificaremos tanto el systemName como el color para que no sean todos iguales
                IconView(systemName: "car", color: .green)
                IconView(systemName: "lock", color: .yellow)
                IconView(systemName: "pc", color: .red)
                IconView(systemName: "wifi", color: .indigo)
            }
            GridRow{
                IconView(systemName: "wifi", color: .indigo)
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
