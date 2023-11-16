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
        VStack {
            Text("Registro de Pasos Diarios")
                .font(.title)
                .padding()
            
            Chart{
                ForEach(weekdays.indices, id: \.self){ idx in
                    BarMark(x: .value("Dia", weekdays[idx]),
                            y: .value("Pasos", steps[idx]))
                    .foregroundStyle(by: .value("Dia", weekdays[idx]))
                    .annotation{
                        Text("\(steps[idx])")
                    }
                    PointMark(x: .value("Dia", weekdays[idx]),
                              y: .value("Pasos", steps[idx]))
                    .foregroundStyle(.red)
                    .lineStyle(StrokeStyle(lineWidth: 5))
                    
                    LineMark(x: .value("Dia", weekdays[idx]),
                             y: .value("Pasos", steps[idx]))
                    .lineStyle(StrokeStyle(lineWidth: 3))
                }
                RuleMark(y: .value("Objetivo diario", 5000))
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    ContentView()
}
