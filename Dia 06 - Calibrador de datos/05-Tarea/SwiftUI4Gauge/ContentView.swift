//
//  ContentView.swift
//  SwiftUI4Gauge
//
//  Created by Danilo Andrusco on 10-11-23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progressGas = 80.3
    @State private var progressVel = 120.0
    @State private var progressTem = 50.0
    
    var body: some View {
        VStack {
            HStack{
                Text("Gasolina")
                    .font(.title2)
                    .bold()
                Spacer()
                Text("Velocidad")
                    .font(.title)
                    .bold()
                Spacer()
                Text("Temp.")
                    .font(.title2)
                    .bold()
                Spacer()
            }.padding(25)
            
            HStack{
                Gauge(value: progressGas, in: 0.0...100.0){
                    Text("Gasolina")
                } currentValueLabel: {
                    Text("\(progressGas.formatted(.number))%")
                } minimumValueLabel: {
                    Text(0.formatted(.percent))
                        .font(.system(size: 6))
                } maximumValueLabel: {
                    Text(1.0.formatted(.percent))
                        .font(.system(size: 6))
                }
                .tint(.green)
                .gaugeStyle(.accessoryCircular)
                .scaleEffect(2)
                
                Spacer()
                
                Gauge(value: progressVel, in: 0.0...180.0){
                    Text("Velocidad")
                } currentValueLabel: {
                    Text("\(progressVel.formatted(.number))KM")
                } minimumValueLabel: {
                    Text(0.formatted(.number))
                        .font(.system(size: 6))
                } maximumValueLabel: {
                    Text(180.formatted(.number))
                        .font(.system(size: 6))
                }
                .tint(.red)
                .gaugeStyle(.accessoryCircular)
                .scaleEffect(2.5)
                
                Spacer()
                
                Gauge(value: progressTem, in: 0.0...100.0){
                    Text("Temp")
                } currentValueLabel: {
                    Image(systemName: "thermometer.sun")
                        .scaleEffect(0.8)
                } minimumValueLabel: {
                    Text("C")
                        .font(.system(size: 6))
                } maximumValueLabel: {
                    Text("H")
                        .font(.system(size: 6))
                }
                .tint(.blue)
                .gaugeStyle(.accessoryCircular)
                .scaleEffect(2)
            }.padding(40)
        }
    }
}

#Preview {
    ContentView()
}
