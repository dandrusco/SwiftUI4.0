//
//  ContentView.swift
//  SwiftUI4ResizableBS
//
//  Created by Danilo Andrusco on 07-11-23.
//


//1. El archivo tiene como nombre SwiftUI4ResizableBS pero aun no se puede redimencionar
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
                    //2. cuando le pasamos el .medium lo hicimos a travez de una lista, lo que significa es que le podemos pasar mas de un estado
                    //3. Le pasaremos el . large y nos aparecera una ralla para poder arrastrarlo hacia arriba o hacia abajo
                    .presentationDetents([.medium, .large])
                    //4. Si queremos ocultar esa barrita lo hacemos asi:
                    .presentationDragIndicator(.hidden)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
