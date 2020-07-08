//
//  AllExercices.swift
//  AllTimeFit
//
//  Created by bechir Majri on 02/07/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//

import SwiftUI

struct AllExercices: View {
    var body: some View {
        VStack{
            ScrollView{
                Divider().background(Color.blue)
                ForEach(listeExercice) { exercice in
                    NavigationLink(destination: ExerciceDetail(exercice: exercice)){
                        VStack {
                            Text(exercice.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .padding(.all)
                                .cornerRadius(10)
                            Image(exercice.imageName)
                                .renderingMode(.original)
                                .border(Color.orange, width: 5)
                            .cornerRadius(10)
                        }
                        
                    }
                }
            }
        }.navigationBarTitle("Tous Les Exercices")
    }
}

struct AllExercices_Previews: PreviewProvider {
    static var previews: some View {
        AllExercices()
    }
}

