//
//  ContentView.swift
//  EdutainmentTestApp
//
//  Created by Arseniy Oksenoyt on 3/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentNumberOfQuestions = 5
    @State private var currentQuestion = 0
    @State private var tableMaximum = 2
    @State private var numberOfQuestions = [5, 10, 20]
    
    @State private var questions = []
    
    var body: some View {
        Form {
            Section {
                Picker("Number of questions", selection: $currentNumberOfQuestions) {
                    ForEach(numberOfQuestions, id: \.self) {
                        Text(String($0))
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Number of question")
                    .font(.subheadline)
            }
            
            Section {
                Stepper("Table maximum is: \(tableMaximum)", value: $tableMaximum, in: 2...12, step: 1)
            } header: {
                Text("Table maximmum?")
                    .font(.subheadline)
            }
            
            Section {
                
            }
        }
    }
    
    private func generateQuiestions() {
        for _ in 1...currentNumberOfQuestions {
            questions.append("What is \(Int.random(in: 0...tableMaximum))?")
        }
    }
    
    private func showQuestion() {
        
    }
}


#Preview {
    ContentView()
}
