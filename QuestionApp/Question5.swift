//
//  Question5.swift
//  QuestionApp
//
//  Created by Brittney Barnwell on 6/24/24.
//

import SwiftUI

struct Question5: View {
    @State private var posPresentAlert = false
    @State private var negPresentAlert = false
    var body: some View {
        NavigationStack {
            VStack (spacing: 40) {
                Text("Q5:")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.cyan)
                    .padding()
                Image("despicableme")
                    .resizable()
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .frame(width: 200, height: 200)
                    .padding()
                
                Button("2013") {
                    posPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
                Button("2014") {
                    negPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
                Button("2017") {
                    negPresentAlert = true
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .background(Rectangle()
                            .foregroundColor(.cyan))
               Text("Congrats, you've finished!")
                    .font(.title2)
                    .fontWeight(.bold)
                
            }
            .padding()
            .alert("Correct!", isPresented: $posPresentAlert, actions: {})
            .alert("Incorrect!", isPresented: $negPresentAlert, actions: {})
        }
    }
}

#Preview {
    Question5()
}
