//
//  ContentView.swift
//  EMoji lover2.0
//
//  Created by Karanvir Singh on 15/04/2024.
//

import SwiftUI

enum Emoji:  String, CaseIterable {
    case 😎, 🥶, 🤩, 👹
}

struct ContentView: View {
    @State var selections: Emoji = .👹
    
    var body: some View {
        NavigationView
        VStack {
            Text(selections.rawValue)
                .font(.system(size: 150))
            Picker("select Emoji", selection: $selections) {
                ForEach(Emoji.allcases, id: \.self) { emoji in
                    Text(emoji.rawValue)
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers")
            .padding()
        }
        
        struct ContentView_previews: PreviewProvider {
            static var previews: some View {
                ContentView()     }
            #Preview {
                
            }
        }
        
        #Preview {
            ContentView()
        }
    }
}
