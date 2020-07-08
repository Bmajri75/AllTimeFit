//
//  Paramettre.swift
//  samsamsam
//
//  Created by benseghir sami on 03/07/2020.
//  Copyright © 2020 samsamsam. All rights reserved.
//

import SwiftUI
struct Paramettre: View {
    @State private var Interieur = false
    @State private var Exterieur = false
    @State private var clock: String = ""
    var body: some View {
        let interieur = Binding<Bool>(get: { self.Interieur }, set: { self.Interieur = $0
            self.Exterieur = false})
        let exterieur = Binding<Bool>(get: { self.Exterieur }, set: { self.Interieur = false
            self.Exterieur = $0})
        return NavigationView{
            VStack{
                Spacer()
                VStack(alignment: .leading){
                Toggle(isOn: interieur) {
                    Text("Intérieur  ")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                }
                
                Toggle(isOn: exterieur) {
                    Text("Extérieur ")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                }
                Spacer().frame(height: 50)
                
                HStack{
                    Text("Je travaille de :")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                    TextField("9h00 à 17h00", text: $clock)
                    
                }
                
                
                HStack{
                    Text("J'ai une pause toutes les :")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                    
                    Text("3h30!")
                }
                }
                Spacer()
                Button(action: {}) {
                    Text("Je Valide")
                        .font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white).padding(.all).border(Color.black, width: 3).background(Color .green)
                        .cornerRadius(10)
                }
                Spacer()
            }.navigationBarTitle("Paramètre")
                .padding()
        }
    }
    struct Paramettre_Previews: PreviewProvider {
        static var previews: some View {
            Paramettre()
        }
    }
}
