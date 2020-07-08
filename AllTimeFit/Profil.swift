//
//  profil.swift
//  final boss 3
//
//  Created by wahib zachari on 02/07/2020.
//  Copyright © 2020 wahib zachari. All rights reserved.
//

import SwiftUI

struct ProfilView: View {
    
    @State var currentUser = utilisateur1
    
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    var dueDate = Date()
    
    var body: some View {
        NavigationView{
        VStack{
            Image(currentUser.image)
                .resizable()
                .frame(width:150,height: 150).clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.orange, lineWidth: 5))
            Spacer()
            HStack{
                Text(currentUser.nom)
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                Text(currentUser.prenom)
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
            }
            HStack{
                Text("Début le : ")
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                    .font(.title)
                Text("\(dueDate, formatter: Self.taskDateFormat)")
                    .font(.headline)
                    .foregroundColor(Color.blue)
            }
            Spacer()
            HStack{
                Text("Calories brûlées :" ).font(.headline).fontWeight(.bold).foregroundColor(Color.orange)
                Text("\(currentUser.caloriesBruler) kcal")
                    .font(.headline)
                    .foregroundColor(Color.blue)
            }
            HStack{
                Text("Temps d'entrainement:").font(.headline).fontWeight(.bold).foregroundColor(Color.orange)
                Text("\(currentUser.totalEntreinement) min")
                    .font(.headline)
                    .foregroundColor(Color.blue)
            }
            Spacer().frame(height:50)
            HStack{
                
                Button(action: {
                    // Remise à zéro des calories et temps entrainement
                    utilisateur1.caloriesBruler = 0
                    utilisateur1.totalEntreinement = 0
                    // Recharge/Réaffecte/Remet utilisateur dans dans mon currentUser
                    self.currentUser = utilisateur1
                    print(utilisateur1)
                }) {
                    Text("Remise à zero ")
                        .font(.largeTitle
                        ).fontWeight(.bold).foregroundColor(Color.white).padding()
                    .background(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
                }
            }
            Spacer()
            }.navigationBarTitle("Profil")
            .onAppear() {
                // Actions quand l'écran apparaît
                self.currentUser = utilisateur1
            }
        }
    }
}
struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
