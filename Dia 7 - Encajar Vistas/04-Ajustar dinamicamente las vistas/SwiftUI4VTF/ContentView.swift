//
//  ContentView.swift
//  SwiftUI4VTF
//
//  Created by Danilo Andrusco on 13-11-23.
//

import SwiftUI

//1. Por ahora nuestra vista se miestra desde la VStack ya que por el momento es la que mejor se adapta, vamos a crear una estructura quien sera la encargada de configurar las vistas

struct GroupView: View {
    var body: some View {
        //3. Lo pegaremos aqui
        ViewThatFits{
            VStack{
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Comprar")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.green)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
                
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Cancelar")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
            }
            .frame(maxHeight: 300)
            
            HStack{
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Comprar")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.green)
                .buttonStyle(.borderedProminent)
                .padding(.leading)
                
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Cancelar")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.trailing)
            
            }
            .frame(maxHeight: 100)
        }
    }
}

struct ContentView: View {
    var body: some View {
        //2. Nos llevaremos todo el codigo y lo pegaremos en la GroupView
        
        /*ViewThatFits{
            VStack{
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Comprar")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.green)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
                
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Cancelar")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
            }
            .frame(maxHeight: 300)
            
            HStack{
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Comprar")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.green)
                .buttonStyle(.borderedProminent)
                .padding(.leading)
                
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Cancelar")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.trailing)
            
            }
            .frame(maxHeight: 100)
        }*/
        
        //4. Crearemos una VStack
        VStack {
            //5. Instanciaremos 2 GroupView con diferentes frame para que uno tome la opcion de vertical y la otra en horizontal
            GroupView()
                .frame(height: 150)
            GroupView()
                .frame(height: 100)
        }
    }
}

#Preview {
    ContentView()
}
