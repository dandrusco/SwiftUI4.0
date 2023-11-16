//
//  ContentView.swift
//  SwiftUI4Table
//
//  Created by Danilo Andrusco on 09-11-23.
//


//1. Lo primero que ccambiaremos es el simulador a un iPad, ya que este codigo es explusivo para iPadOS
import SwiftUI

//2. Crearemos una estructura para los cursos identificable
struct Course: Identifiable {
    //3. Crearemos las constantes que necesitaremos incluyendo el ID como identificador unico, valor que lo obtendremos de UUID() que nos proporciona Swift
    let id = UUID()
    let name: String
    let topic: String
    let hours: String
    let price: String
}

struct ContentView: View {
    
    //4. Crearemos una variable que contendra un array de cursos como miembro de la clase Course
    let courses: [Course] = [
        //5. Lo inicializaremos
        .init(name: "Python desde cero", topic: "Python", hours: "140", price: "$ 9.99"),
        .init(name: "Python de Cero a Experto", topic: "Python", hours: "425", price: "$ 29.99"),
        .init(name: "Interfaz Gráfica en Python", topic: "Python", hours: "50", price: "$ 19.99"),
        .init(name: "Python Avanzado", topic: "Python", hours: "75", price: "$ 19.99"),
        .init(name: "Práctica guiada en Python", topic: "Python", hours: "135", price: "$ 11.99"),
        .init(name: "Hacking con Python", topic: "Python", hours: "275", price: "$ 39.99"),
        .init(name: "Swift desde cero", topic: "Swift", hours: "60", price: "$ 19.99"),
        .init(name: "Curso de Git y GitHub", topic: "Git", hours: "20", price: "$ 29.99")
    ]
    
    var body: some View {
        //6. Crearemos una tabla, indicandole por () de donde sacaremos los datos
        Table(courses){
            //7. Crearemos una TableColumn que le pasaremos un titulo y un valor a mostrar, en este caso los nombres de los cursos
            TableColumn("Titulo del curso", value: \.name)
            //8. Crearemos otra TableComun para mostrar la tematica del curso
            TableColumn("Tematica", value: \.topic)
            //9. Pondremos otra para la hora
            TableColumn("Horas", value: \.hours)
            //10 Y la ultima para el valor
            TableColumn("Precio", value: \.price)
        }
    }
}

#Preview {
    ContentView()
}
