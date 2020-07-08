//
//  ExtractsView.swift
//  AllTimeFit
//
//  Created by bechir Majri on 02/07/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//

import SwiftUI



// Extract View du sport View

struct SportView: View {
    var sport: Exercice
    var body: some View {
        VStack{
            Text(sport.title)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
            Image(sport.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250.0)
            
        }
    }
}


// environement View
struct EnvironementView: View {
    var environement: String
    var imageName: String
    var body: some View {
        VStack(spacing: -20){
            Text(environement)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150.0)
        }
    }
}

// View de All ExercicesView logo

struct AllExercicesView: View {
    var allExercicesTitle: String = "Tout les Exercices"
    var imageLeft: String = "Jogging"
    var imageRight: String =  "TrainingHome"
    var body: some View {
        VStack(spacing: -20){
            Text(allExercicesTitle)
                .font(.largeTitle)
                .foregroundColor(Color.orange)
                .fontWeight(.bold)
            HStack(spacing: -60){
                Image(imageLeft)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0)
                Image(imageRight)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0)
                
            }
        }
    }
}


struct ExtractsView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
