//
//  ExercicesInterieur.swift
//  AllTimeFit
//
//  Created by bechir Majri on 02/07/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//

import SwiftUI

struct ExercicesInterieur: View {
    
    var body: some View {
        VStack(alignment: .center){
            ScrollView{
                ForEach(interieurExercices) { interieur in
                                   NavigationLink(destination: ExerciceDetail(exercice: interieur)){
                                       VStack {
                                           Text(interieur.title)
                                               .fontWeight(.bold)
                                               .foregroundColor(Color.black)
                                               .padding(.all)
                                               .cornerRadius(10)
                                           Image(interieur.imageName)
                                               .renderingMode(.original)
                                               .border(Color.orange, width: 5)
                                           .cornerRadius(10)
                                       }
                                       
                                   }
                               }
            }
        }.navigationBarTitle("Exercices Interieur")
    }
}


struct ExercicesInterieur_Previews: PreviewProvider {
    static var previews: some View {
        ExercicesInterieur()
    }
}

