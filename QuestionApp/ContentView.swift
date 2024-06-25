//
//  ContentView.swift
//  QuestionApp
//
//  Created by Brittney Barnwell on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Childhood Nostalgia")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.cyan)
                    .padding()
                Text("Trivia: try to guess the correct year these childhood movie favorites were released :)")
                    .padding()
            }
            .padding()
            NavigationLink(destination: Question1()) {
                Text("Let's Go")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .background(Rectangle()
                                .foregroundColor(.cyan))
                    .padding()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
