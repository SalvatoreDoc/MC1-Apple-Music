//
//  ContentView.swift
//  Apple Music
//
//  Created by Salvatore Capasso on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        
        
        
        NavigationStack {
            ScrollView{
                
        
                    
                VStack(alignment:.leading){
                    Text("Top Picks")
                        .bold()
                        .font(.title2)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.fixed(360))], spacing: 7) {
                            ForEach(ConsigliViewModel().Carte) { card in
                                CreazioneCard(card: card)
                                
                            }
                            
                        }
                    }
                }
                VStack(alignment:.leading){
                    Text("Recently Playes")
                        .foregroundColor(.black)
                        .bold()
                        .font(.title2)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.fixed(200))], spacing: 7) {
                            ForEach(CardViewModel().Cards) { card in
                                CardView(card: card)
                                
                                
                                
                                
                            }
                        }
                    }
                    }
                
                
            }.listStyle(.plain)
                .navigationTitle("Listen now")
                
                .padding()
            
            
            Spacer()
                .overlay{
                    
                    NavigationLink(destination:Apple_Music.Prova()){
                        Bottone()
                            .padding(.bottom, 50.0)
                        
                        
                    }
                }
                .toolbar(content: {
                   
                    ToolbarItem(placement:.navigationBarTrailing)
                    {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding()
                            .foregroundColor(.red)
                        
                        
                    }
                })
        }
        
        
        
    }
    
    

        }
        
    

#Preview {
    ContentView()
}
