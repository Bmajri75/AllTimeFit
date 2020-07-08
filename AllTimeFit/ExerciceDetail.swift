//
//  PushUp.swift
//  samsamsam
//
//  Created by benseghir sami on 02/07/2020.
//  Copyright © 2020 samsamsam. All rights reserved.
//

import SwiftUI

struct ExerciceDetail: View {
    
    var exercice: Exercice
    
    var body: some View {
        ScrollView{
            VStack {
                Image(exercice.imageName)
                Text(exercice.objectif)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                Text("Vous allez brûler \(exercice.ckalBurn) kilocalories !")
                Text("--------------------")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                Text("Explication :")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                    .padding(10)
                Text(exercice.description)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading).padding()
                Spacer().frame(height: 20)
                
                Button(action: {
                    utilisateur1.caloriesBruler += self.exercice.ckalBurn
                    utilisateur1.totalEntreinement += self.exercice.trainingTime
                }) {
                    Text("J'ai fait ")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white).padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }.padding(.horizontal).navigationBarTitle(exercice.title)
            }
            
        }
    }
}
struct ExerciceDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciceDetail(exercice: listeExercice[5] )
    }
}

