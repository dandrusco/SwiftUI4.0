//
//  ContentView.swift
//  SwiftUI4Layout
//
//  Created by Danilo Andrusco on 16-11-23.
//

import SwiftUI

struct ContentView: View {
   
    //5. AHora tambien podemos presindir de esta variable de estado
    /*@State private var changeLayout = false*/
    
    //1. Vamos a crear una variable de entorno que sera ..horizontalSizeClass, la que nos permita reemplazar la constante layout para poder hacerlo dinamicamente
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        //2. Cambiaremos el operador ternario de changeLayout de la contante layout, por una condicion booleana, si horizontalSizeClass coincide con regular (Horizontal, en vertical seria en compact)
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
        //3. La animacion ahora debe funcionar con
        .animation(.default, value: horizontalSizeClass)
        //4. Como ahora es dinamico, podemos eliminar el onTapGesture ya que al rotar el telefono este cambiara automaticamente
        /*.onTapGesture {
            changeLayout.toggle()
        }*/
    }
}

#Preview {
    ContentView()
}
