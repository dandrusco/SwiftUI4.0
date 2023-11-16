//
//  ContentView.swift
//  SwiftUI4ResizableBS
//
//  Created by Danilo Andrusco on 07-11-23.
//

import SwiftUI

struct ContentView: View {
    
    //1. Crearemos una variable de estado para el BottonSheet
    @State private var showBottonSheet = false
    
    var body: some View {
        VStack {
            //2. Crearemos un boton
            Button("Mostar la Botton Sheet"){
                //3. Al presionarlo cambiara el estado del showBottonSheet con Togle (de false a true y viceversa)
                showBottonSheet.toggle()
            }
            //4. Le agregaremos un borde al boton
            .buttonStyle(.borderedProminent)
            
            //6. Crearemos el SHEET para que al precionar el boton nos muestre un texto
            .sheet(isPresented: $showBottonSheet){
                Text("Esto forma parte de la botton sheet redimencionable")
                    //7. Con presentationDetents le diremos que solo aparezca hasta la mitad de la pantalla (medium
                    .presentationDetents([.medium])
            }
            
            //5. Con Spacer lo tiramos hacia arriba
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
