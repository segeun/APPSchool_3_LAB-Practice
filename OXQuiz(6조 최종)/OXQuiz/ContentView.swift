//
//  ContentView.swift
//  OXQuiz
//
//  Created by cha_nyeong on 2023/06/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    QuizView()
                } label: {
                    Image("OXQuizImage")
                }
            }
            .font(.largeTitle)
            .padding()
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

