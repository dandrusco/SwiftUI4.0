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
                //1. Cambiaremos el AreaMark por el LineMark
                LineMark(x: .value("Dia", weekdays[idx]),
                        y: .value("Pasos", steps[idx]))
                
                //2. deberemos comentar el color ya que no es compatible con LineMark, a menos que le agreguemos un solo color
                // .foregroundStyle(by: .value("Dia", weekdays[idx]))
                //3. Pintaremos la linea de un color verde
                .foregroundStyle(.green)
                //4. Cambiaremos el estilo
                .lineStyle(StrokeStyle(lineWidth: 5))
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
