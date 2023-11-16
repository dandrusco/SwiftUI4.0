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
                //1. Para invertir el grafico si,plemente invertimos el dia por los pasos
                BarMark(x: .value("Pasos", steps[idx]),
                        y: .value("Dia", weekdays[idx]))
                .foregroundStyle(by: .value("Dia", weekdays[idx]))
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
