//
//  CreazioneCard.swift
//  Apple Music
//
//  Created by Salvatore Capasso on 17/11/23.
//

import SwiftUI

struct CreazioneCard: View {
    let card : Card
    var body: some View {
        NavigationStack{
            
                
                Text(card.consigli)
                    .offset(x:-100,y:20)
                    .font(.system(size: 15))
                    .frame(height: 70)
                    .frame(width: 100)
                    .foregroundColor(.black)
                    .opacity(0.4)
                    .padding(6)
                
                
                
                VStack(spacing: 0){
                    Image(card.AlbumImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .frame(height: 250)
                    
                    
                    
                    ZStack{
                        card.categoriacolore
                            .opacity(0.8)
                        
                            .frame(width: 250, height: 80)
                        
                        
                        VStack{
                            Text(card.AlbumName)
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .bold()
                                .frame(height: 10)
                                .frame(width: 100)
                            
                            Text(card.NomeArtista)
                                .font(.system(size: 13))
                                .frame(height: 2)
                                .frame(width: 100)
                                .foregroundColor(.white)
                                .padding(2)
                        }
                    }
                }.cornerRadius(20)
                
            
        }
    }
}

#Preview {
    let card = Card(AlbumImage: "Geolier", NomeArtista: "Geolier", AlbumName: "Emanuele",consigli: "Per te", categoriacolore:.red)

    return CreazioneCard(card: card)
}
