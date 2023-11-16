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
    //4. Podemos parametrizar la altura maxima
    var maxHeight = 80.0
    
    var body: some View {
        VStack {
            Image(systemName: systemName)
                //5. Le cambiaremos el 80 por el ahora por nuestra variable maxHeight
                .frame(maxWidth: .infinity, maxHeight: maxHeight)
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
                IconView(systemName: "car", color: .green)
                IconView(systemName: "lock", color: .yellow)
                //1. Podemos tener Grid dentro de una Grid
                Grid{
                    //2. Para que no quede una encima de la otra deberemos utlizar GridRow
                    GridRow{
                        //6. AHora a estos 4 IconView le podemos agregar un parametro para que su altura sea a la mitad (40.0)
                        IconView(systemName: "pc", color: .red, maxHeight: 40.0)
                        IconView(systemName: "wifi", color: .indigo, maxHeight: 40.0)
                    }
                    //3. Copiaremos y pegaremos la GridRow creada en el paso anterior
                    GridRow{
                        IconView(systemName: "pc", color: .red, maxHeight: 40.0)
                        IconView(systemName: "wifi", color: .indigo, maxHeight: 40.0)
                    }
                }
            }
            //7. pondremos otra IconView pero que ocupe todo el largo, con una altura de 30.0
            GridRow{
                IconView(systemName: "lungs", color: .orange, maxHeight: 30.0)
                    .gridCellColumns(4)
            }
            
            GridRow{
                IconView(systemName: "wifi", color: .indigo)
                    .gridCellColumns(2)
                IconView(systemName: "wifi", color: .indigo)
                    .gridCellColumns(2)
            }
            //8. Tambien podemos crear uno que sea mas grande de los 80 de altura maxima
            GridRow{
                IconView(systemName: "creditcard", color: .blue, maxHeight: 140.0)
                    .gridCellColumns(4)
            }
        }
    }
}

#Preview {
    ContentView()
}
