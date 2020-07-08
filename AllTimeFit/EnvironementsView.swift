//
//  Environement.swift
//  AllTimeFit
//
//  Created by bechir Majri on 02/07/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//

import SwiftUI

struct EnvironementsView: View {
    var body: some View {
        NavigationView{
            // Page Global en allignement Vertical
            VStack{
                
                // Exterieur
                NavigationLink(destination: ExercicesExterieur())
                {
                    EnvironementView(environement: "Exterieur", imageName: "Jogging")
                }
                .buttonStyle(PlainButtonStyle())
                //   Interieur
                NavigationLink(destination: ExercicesInterieur()){
                    EnvironementView(environement: "Interieur", imageName:"TrainingHome" )
                }
                .buttonStyle(PlainButtonStyle())
                //     Tous les Exercices
                VStack(spacing: -20){
                    NavigationLink(destination: AllExercices()){
                        AllExercicesView()
                    }.buttonStyle(PlainButtonStyle())
                }
            }.navigationBarTitle("Environnement")
        }
    }
}


struct EnvironementsView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironementsView()
    }
}

