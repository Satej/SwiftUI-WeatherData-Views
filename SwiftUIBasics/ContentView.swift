//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Satej Sahu on 01/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self) { object in
                HStack {
                    Image(systemName: object.icon)
                        .foregroundColor(object.color)
                    Text("\(object.high)° F")
                        .foregroundColor(Color.blue)
                    NavigationLink(object.day, destination: DetailView(data: object))
                }
                .navigationTitle("New York City")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
