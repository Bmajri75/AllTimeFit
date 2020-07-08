//
//  ExercicesExterieur.swift
//  AllTimeFit
//
//  Created by bechir Majri on 02/07/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//

import SwiftUI

struct ExercicesExterieur: View {
    var body: some View {
        VStack{
            ScrollView{
       ForEach(exterieurExercices) { exterieur in
                                   NavigationLink(destination: ExerciceDetail(exercice: exterieur)){
                                       VStack {
                                           Text(exterieur.title)
                                               .fontWeight(.bold)
                                               .foregroundColor(Color.black)
                                               .padding(.all)
                                               .cornerRadius(10)
                                           Image(exterieur.imageName)
                                               .renderingMode(.original)
                                               .border(Color.orange, width: 5)
                                           .cornerRadius(10)
                                       }
                                       
                                   }
                               }
                
            }
        }.navigationBarTitle("Exercices Exterieur")
    }
}

struct ExercicesExterieur_Previews: PreviewProvider {
    static var previews: some View {
        ExercicesExterieur()
    }
}


