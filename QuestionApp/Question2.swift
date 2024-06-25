//
//  Question2.swift
//  QuestionApp
//
//  Created by Brittney Barnwell on 6/24/24.
//

import SwiftUI

struct Question2: View {
    @State private var posPresentAlert = false
    @State private var negPresentAlert = false
    var body: some View {
        NavigationStack {
            VStack (spacing: 40) {
                Text("Q2:")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.cyan)
                    .padding()
                Image("toystory")
                    .resizable()
                    .cornerRadius(15)
                    .shadow(radius : 15)
                    .frame(width: 200, height: 200)
                    .padding()
                
                Button("2009") {
                    negPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
                Button("2010") {
                    posPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
                Button("2011") {
                    negPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
                NavigationLink(destination: Question3()) {
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
    Question2()
}
