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
                    
                    VStack{
                        
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                
                                Text("Ascolta ora")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundColor(.black)
                                    .offset(y:20)
                                
                                Spacer()
                                Image(systemName: "person.crop.circle")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.red)
                                    .offset(y:20)
                            }
                            
                            
                            Text("In primo piano")
                                .foregroundColor(.black)
                                .bold()
                                .font(.system(size: 23))
                                .offset(y:40)
                            
                            
                        }
                        
                        
                        Spacer()
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.fixed(360))], spacing: 7) {
                                ForEach(ConsigliViewModel().Carte) { card in
                                    CreazioneCard(card: card)
                                    
                                }
                                
                            }
                        }
                        
                        Text("Ascoltati di recente")
                            .foregroundColor(.black)
                            .bold()
                            .font(.title2).offset(x:-80)
                        
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: [GridItem(.fixed(200))], spacing: 7) {
                                ForEach(CardViewModel().Cards) { card in
                                    CardView(card: card)
                                    
                                    
                                }
                                
                            }
                        }
                        
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    .padding()
                    
                    
                    
                }
                
                Spacer()
                        .overlay{
                            
                            NavigationLink(destination:Apple_Music.Prova()){
                                Bottone()
                                    .padding(.bottom, 50.0)
                                
                                
                            }
                        }
            }
                
                
                
        }
        
    }
    


#Preview {
    ContentView()
}
