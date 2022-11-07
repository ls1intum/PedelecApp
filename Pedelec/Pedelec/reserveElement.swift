//
//  Button.swift
//  Pedelec
//
//  Created by Julian Kretzschmar on 05.11.22.
//

import SwiftUI

struct reserveElement: View {
    @State var range = 50
    @State var distance = 200
    //1: green, 2: orange, 3: red
    @State var color = 1
    
    var body: some View {
        HStack {
            VStack {
                Image("bicycle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70)
                if color == 1 {
                    Text("\(range)km")
                        .foregroundColor(.green)
                } else if color == 2 {
                    Text("\(range)km")
                        .foregroundColor(.orange)
                } else {
                    Text("\(range)km")
                        .foregroundColor(.red)
                }
                
            }
            Spacer()
            Text("\(distance)m")
            Spacer()
            Button("Reserve") {
                print("Reserved")
            }
            .padding()
            .background(Color(red: 38/255, green: 145/255, blue: 175/255))
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
        .padding()
        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
        .cornerRadius(15)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        reserveElement()
    }
}
