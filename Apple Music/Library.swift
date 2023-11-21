//
//  Library.swift
//  Apple Music
//
//  Created by Salvatore Capasso on 20/11/23.
//

import SwiftUI

struct Library: View {
    var body: some View {
        
        
        
        NavigationStack{
            
            
            VStack(alignment:.leading){
                List{
                    Section{
                        HStack{
                            Image(systemName: "music.note.list")
                                .foregroundColor(.red)
                                .font(.system(size: 25))
                            Text("Playlists")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                            
                        }
                        HStack{
                            Image(systemName: "music.mic")
                                .foregroundColor(.red)
                                .font(.system(size: 25))
                            Text("Artists")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        HStack{
                            Image(systemName: "square.stack")
                                .foregroundColor(.red)
                                .font(.system(size: 25))
                            Text("Albums")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                            
                        }
                        HStack{
                            Image(systemName: "music.note")
                                .foregroundColor(.red)
                                .font(.system(size: 25))
                            Text("Songs")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                            
                        }
                        HStack{
                            Image(systemName: "guitars")
                                .foregroundColor(.red)
                                .font(.system(size: 25))
                            Text("Genres")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                            
                        }
                        HStack{
                            Image(systemName: "music.quarternote.3")
                                .foregroundColor(.red)
                                .font(.system(size: 25))
                            Text("Composers")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                            
                        }
                    }
                    Section{
                        VStack(alignment:.leading){
                            Text("Recently Added")
                                .bold()
                                .font(.title2)
                            Image("Geolier")
                                .resizable()
                                .frame(width: 160,height: 160)
                                .cornerRadius(10)
                            Text("Emanuele")
                            Text("Geolier")
                                .opacity(0.4)
                            
                        }
                    }//test
                    
                    
                    
                    
                }.listStyle(.plain)
                    .navigationTitle("Library")
                    .navigationBarTitleDisplayMode(.inline)
               
                 
                
            }.padding()
            
               
                
                
                
                
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding()
                            .foregroundColor(.red)
                    }
                    ToolbarItem(placement:.navigationBarTrailing)
                    {
                        
                        Text("Edit")
                            .font(.title3)
                            .foregroundColor(.red)
                        
                        
                        
                    }
                })
            Spacer()
            .overlay{
                
                NavigationLink(destination:Apple_Music.Prova()){
                    Bottone()
                        .padding(.bottom,50)
                       
                    
                }
            }
       
        }
        }
    
    
}

#Preview {
    Library()
    
}

