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
    
    //3. Cambiaremos de let a var para modificar su orden
    var courses: [Course] = [
        .init(name: "Python desde cero", topic: "Python", hours: "140", price: "$ 9.99"),
        .init(name: "Python de Cero a Experto", topic: "Python", hours: "425", price: "$ 29.99"),
        .init(name: "Interfaz Gráfica en Python", topic: "Python", hours: "50", price: "$ 19.99"),
        .init(name: "Python Avanzado", topic: "Python", hours: "75", price: "$ 19.99"),
        .init(name: "Práctica guiada en Python", topic: "Python", hours: "135", price: "$ 11.99"),
        .init(name: "Hacking con Python", topic: "Python", hours: "275", price: "$ 39.99"),
        .init(name: "Swift desde cero", topic: "Swift", hours: "60", price: "$ 19.99"),
        .init(name: "Curso de Git y GitHub", topic: "Git", hours: "20", price: "$ 29.99")
    ]
    
    @State private var selectedCourse = Set<Course.ID>()
    
    //1. Para ordenar deberemos agregar un estado que inicializariamos como un array que contendra el comparador
    @State private var sortOrder = [KeyPathComparator(\Course.name)]
    
    var body: some View {
        VStack {
            Text("Cursos seleccioados: \(selectedCourse.count)")
                .bold()
            //TODO: En la actualidad no realiza el conteo
            
            //2. Para ordenar deberemos agregar un tercer parametro llamado sortOrder y le deberemos pasar este nuevo estado
            Table(courses, selection: $selectedCourse, sortOrder: $sortOrder){
                TableColumn("Titulo del curso", value: \.name)
                TableColumn("Tematica", value: \.topic)
                TableColumn("Horas", value: \.hours)
                TableColumn("Precio", value: \.price)
            }
            //4. Añadiremos un evento que nos permite cambiar un conjunto de valores
            .onChange(of: sortOrder) {
                courses.sort(using: $0)
                //TODO: Este error no se a solucionado en Xcode 15.0.1 
            }
        }
    }
}

#Preview {
    ContentView()
}
