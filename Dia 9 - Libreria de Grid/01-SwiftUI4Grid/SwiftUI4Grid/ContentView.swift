//
//  ContentView.swift
//  SwiftUI4Grid
//
//  Created by Danilo Andrusco on 15-11-23.
//

import SwiftUI

//3. Crearemos una estructura para los elementos a mostrar
struct IconView: View {
    //4. Necesitaremos 2 variables, una para el nombre del icono y la otra para el color del rectangulo que por defecto sera verde
    var systemName = ""
    var color = Color.green
    
    var body: some View {
        VStack {
            //5. Creaamos la imagen con el rectangulo, color, grafientes, etc
            Image(systemName: systemName)
                .frame(width: 100, height: 100)
                .font(.system(size: 60))
                .background(in: Rectangle())
                .backgroundStyle(color.gradient)
                .foregroundStyle(.white.shadow(.inner(radius: 3.0, y: 5.0)))
        }
    }
}

struct ContentView: View {
    var body: some View {
        //1. Con Grid Podemos crear interfaces mediante filas y columnas
        Grid{
            //2. Podemos poner tantos GridRow como sea necesario
            GridRow{
                //6. LLamamos a IconView
                IconView(systemName: "wifi", color: .indigo)
                //7. La magia de esto, es que ahora puedo poner otra IconView debajo de la primera pero con GridRow aparecera al lado de la otra
                IconView(systemName: "wifi", color: .indigo)
            }
            //8. Copiaremos la GridRow con los dos IconView y la pegaremos a continuacion
            GridRow{
                IconView(systemName: "wifi", color: .indigo)
                IconView(systemName: "wifi", color: .indigo)
                //9. Copiaremos un tercer IconView
                IconView(systemName: "wifi", color: .indigo)
            }
        }
    }
}

#Preview {
    ContentView()
}
