//
//  ContentView.swift
//  Pedelec
//
//  Created by Julian Kretzschmar on 03.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Pedelec App")
                .font(.title)
                .foregroundColor(Color(red: 38/255, green: 145/255, blue: 175/255))
            Image("map")
                .resizable()
                .scaledToFit()
                .padding(.bottom)
            
            ScrollView {
                ReserveElementView(range: 50, distance: 150, color: 1)
                ReserveElementView(range: 10, distance: 200, color: 2)
                ReserveElementView(range: 25, distance: 230, color: 1)
                ReserveElementView(range: 5, distance: 480, color: 3)
                ReserveElementView(range: 7, distance: 540, color: 3)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
