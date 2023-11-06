//
//  ContentView.swift
//  CursoSwiftUI4
//
//  Created by Danilo Andrusco on 03-11-23.
//

import SwiftUI
import Charts

struct ContentView: View {
    //1. Crearemos un variable para los dias de la semana que tome los datos de Calendar
    let weekdays = Calendar.current.shortWeekdaySymbols
    //2. Creamos un array con los pasos
    let steps = [5507, 3421, 7249, 1709, 2465, 3165, 6666]
    var body: some View {
        Chart{
            //3. Eliminaremos estas 3 para crear un bucle ForEach
            /*
            BarMark(x: .value("Dia", "Lunes"),
                    y: .value("Pasos", 3421))
            
            BarMark(x: .value("Dia", "Martes"),
                    y: .value("Pasos", 7249))

            BarMark(x: .value("Dia", "Miercoles"),
                    y: .value("Pasos", 1709))
             */
            //4. Me quedare con los indices de la semana con el ID en el propio grafico que se lo pasaremos a la variable que llamaremos idx
            ForEach(weekdays.indices, id: \.self){ idx in
                //5. Pintamos el grafico donde la X sera el dia sera de weekdays con el indice de idx, y la Y sera el de los pasos correspondiente al indice IDX
                BarMark(x: .value("Dia", weekdays[idx]),
                        y: .value("Pasos", steps[idx]))
            }
        }
    }
}

#Preview {
    ContentView()
}
