//
//  ContentView.swift
//  sela
//
//  Created by Heryan Djaruma on 20/08/24.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                HStack {
                    Image("GF Icon")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(width: 60)
                    Image("BF Icon")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                Text("Draw something cute for your partner to see ☺️")
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview("Home View") {
    HomeView()
}
