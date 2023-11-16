//
//  ContentView.swift
//  SwiftUI4Table
//
//  Created by Danilo Andrusco on 09-11-23.
//

import SwiftUI

struct Course: Identifiable {

    let id = UUID()
    let name: String
    let topic: String
    let hours: String
    let price: String
}

struct ContentView: View {
    
    let courses: [Course] = [
        .init(name: "Python desde cero", topic: "Python", hours: "140", price: "$ 9.99"),
        .init(name: "Python de Cero a Experto", topic: "Python", hours: "425", price: "$ 29.99"),
        .init(name: "Interfaz Gráfica en Python", topic: "Python", hours: "50", price: "$ 19.99"),
        .init(name: "Python Avanzado", topic: "Python", hours: "75", price: "$ 19.99"),
        .init(name: "Práctica guiada en Python", topic: "Python", hours: "135", price: "$ 11.99"),
        .init(name: "Hacking con Python", topic: "Python", hours: "275", price: "$ 39.99"),
        .init(name: "Swift desde cero", topic: "Swift", hours: "60", price: "$ 19.99"),
        .init(name: "Curso de Git y GitHub", topic: "Git", hours: "20", price: "$ 29.99")
    ]
    
    //1. Para poder seleccionar un curso en cuestion necesitaremos crear una variable dde estado, debera ser de tipo conjuntos ya que podemos seleccionar mas de uno
    @State private var selectedCourse = Set<Course.ID>()
    
    var body: some View {
        //2. Meteremos la tabla dentro de una VStack
        VStack {
            //3. Mostraremos el curso seleccionado
            Text("Cursos seleccioados: \(selectedCourse.count)")
                .bold()
            
            //4. Este selectedCourse debe ser vinculabre a la tabla, por lo tanto se lo pasaremos como parametro
            Table(courses, selection: $selectedCourse){
                TableColumn("Titulo del curso", value: \.name)
                TableColumn("Tematica", value: \.topic)
                TableColumn("Horas", value: \.hours)
                TableColumn("Precio", value: \.price)
                //TODO: En la actualidad no realiza el conteo
            }
        }
    }
}

#Preview {
    ContentView()
}
