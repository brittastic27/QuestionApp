//
//  Question1.swift
//  QuestionApp
//
//  Created by Brittney Barnwell on 6/24/24.
//

import SwiftUI

struct Question1: View {
    @State private var posPresentAlert = false
    @State private var negPresentAlert = false
    var body: some View {
        NavigationStack {
            VStack (spacing: 40){
                Text("Q1:")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.cyan)
                    .padding()
                Image("inside out")
                    .resizable()
                    .cornerRadius(15)
                    .shadow(radius : 15)
                    .frame(width: 200, height: 200)
                    .padding()
                
                Button("2015") {
                    posPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
                Button("2012") {
                    negPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
                Button("2016") {
                    negPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
                NavigationLink(destination: Question2()) {
                    Text("Next Question >")
                }
                
            }
            .padding()
            .alert("Correct!", isPresented: $posPresentAlert, actions: {})
            .alert("Incorrect!", isPresented: $negPresentAlert, actions: {})
        }
    }
}

#Preview {
    Question1()
}
