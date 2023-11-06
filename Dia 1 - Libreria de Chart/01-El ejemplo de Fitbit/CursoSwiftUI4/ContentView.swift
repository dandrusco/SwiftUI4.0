//
//  ContentView.swift
//  CursoSwiftUI4
//
//  Created by Danilo Andrusco on 03-11-23.
//

import SwiftUI
//1. Importamos Charts para representacion grafica
import Charts

struct ContentView: View {
    var body: some View {
        // 2. Crearemos unos graficos para los pasos que uno da al caminar
        Chart{
            //3. Barra vertical con eje X e Y
            BarMark(x: .value("Dia", "Lunes"),
                    y: .value("Pasos", 3421))
            //4. Crearemos para el dia martes
            BarMark(x: .value("Dia", "Martes"),
                    y: .value("Pasos", 7249))
            //5. Crearemos para el dia Miercoles
            BarMark(x: .value("Dia", "Miercoles"),
                    y: .value("Pasos", 1709))
        }
    }
}

#Preview {
    ContentView()
}
