//
//  ContentView.swift
//  SwiftUI4VTF
//
//  Created by Danilo Andrusco on 13-11-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ViewThatFits{
            VStack{
                //1. Pondremos un boton de compra
                Button(action: {
                    //TODO: Accion del boton
                }){
                    Text("Comprar")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                //2. Pintaremos el boton en verde
                .tint(.green)
                //3. Le ponderemos un estilo al boton de tipo borderedProminent para ver el largo
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
                
                //4. Pegaremos todo el boton comprar aca:
                Button(action: {
                    //TODO: Accion del boton
                }){
                    //5. Cambiamos el coprar por el cancelar
                    Text("Cancelar")
                        //6. Le quitaremos la negrita
                        //.bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                //7. Le cambamos el color verde por el plomo
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
            }
            .frame(maxHeight: 300)
            
            HStack{
                //8. Copiaremos ambos botones y lo pegaremos en la HStack
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
                //9. En vez que sea horizontal lo cambiaremos a la izquiersa
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
                //10. En vez que sea horizontal lo cambiaremos a la derecha
                .padding(.trailing)
            
            }
            .frame(maxHeight: 100)
        }
    }
}

#Preview {
    ContentView()
}
