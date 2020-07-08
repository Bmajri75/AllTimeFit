//
//  ContentView.swift
//  AllTimeFit
//
//  Created by bechir Majri on 01/07/2020.
//  Copyright © 2020 bechir Majri. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    
    var body: some View {
        
        TabView {
            EnvironementsView()
                .tabItem {
                    Image("gym")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .aspectRatio(contentMode: .fit)
                    Text("Training")
            }
            ProfilView()
                .tabItem {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .aspectRatio(contentMode: .fit)
                    Text("Profile")
            }
            Paramettre()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .aspectRatio(contentMode: .fit)
                    Text("Paramettre")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
