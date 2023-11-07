//
//  ContentView.swift
//  SwiftUI4ResizableBS
//
//  Created by Danilo Andrusco on 07-11-23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showBottonSheet = false
    
    var body: some View {
        VStack {
            Button("Mostar la Botton Sheet"){
                showBottonSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showBottonSheet){
                Text("Esto forma parte de la botton sheet redimencionable")
                    //1 le agregaremos otro mas, el fraction con un 20% de ocupacion en la pantalla
                    .presentationDetents([.fraction(0.2), .medium, .large])
                    //2. Eliminaremos el presentationDragIndicator por que para mi es mas comodo visualizar la ralla
                    //.presentationDragIndicator(.hidden)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
