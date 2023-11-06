//
//  ContentView.swift
//  CursoSwiftUI4
//
//  Created by Danilo Andrusco on 03-11-23.
//

import SwiftUI
import Charts

struct ContentView: View {

    let weekdays = Calendar.current.shortWeekdaySymbols
    
    let steps = [5507, 3421, 7249, 1709, 2465, 3165, 6666]
    var body: some View {
        Chart{
            ForEach(weekdays.indices, id: \.self){ idx in
                BarMark(x: .value("Dia", weekdays[idx]),
                        y: .value("Pasos", steps[idx]))
                //1. Para cambiar el color de los graficos
                .foregroundStyle(by: .value("Dia", weekdays[idx]))
                //2 Tambien le podemos agregar un texto a la barra
                .annotation{
                    Text("\(steps[idx])")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
