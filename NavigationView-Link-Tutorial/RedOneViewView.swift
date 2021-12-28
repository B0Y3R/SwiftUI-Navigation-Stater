//
//  RedOneViewView.swift
//  NavigationView-Link-Tutorial
//
//  Created by James Boyer on 12/28/21.
//

import SwiftUI

struct RedOneViewView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleNumberView(color: .red, number: 1)
                    .navigationTitle("Red One")
                    .offset(y: -60)
                
                NavigationLink(destination: Text("Destination"), label: { Text("Next Screen") })
            }
        }
    }
}

struct CircleNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneViewView()
    }
}
