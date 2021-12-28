//
//  RedOneViewView.swift
//  NavigationView-Link-Tutorial
//
//  Created by James Boyer on 12/28/21.
//

import SwiftUI

struct ButtonView: View {
    
    var label: String
    var backgroundColor: Color = Color.blue
    var textColor: Color = .white
    
    var body: some View {
        Text("Next Screen")
            .bold()
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(10)
    }
}

struct BlueTwoViewView: View {
    var color: Color
    
    var body: some View {
        VStack {
            CircleNumberView(color: color, number: 2)
                .navigationTitle("Blue Two")
                .offset(y: -60)
            
            NavigationLink(
                destination: GreenThreeViewView(),
                label: {
                    ButtonView(label: "Next Screen")
                }
            )
        }
    }
}

struct GreenThreeViewView: View {
    var body: some View {
        VStack {
            CircleNumberView(color: .green, number: 3)
                .navigationTitle("Green Three")
                .offset(y: -60)
        }
    }
}

struct RedOneViewView: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleNumberView(color: .red, number: 1)
                    .navigationTitle("Red One")
                    .offset(y: -60)
                
                NavigationLink(
                    destination: BlueTwoViewView(color: .orange),
                    label: {
                        ButtonView(label: "Next Screen", backgroundColor: .green)
                    }
                )
            }
        }
        .accentColor(Color(.label))
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
            .preferredColorScheme(.dark)
    }
}
