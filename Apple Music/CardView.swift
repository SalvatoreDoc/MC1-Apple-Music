//
//  CardView.swift
//  Apple Music
//
//  Created by Salvatore Capasso on 16/11/23.
//

import SwiftUI

struct CardView: View {

    let card: Card

    var body: some View {

            ZStack{

                VStack( spacing: 10) {
                    
                   
                    Image(card.AlbumImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 140)
                        .frame(height: 140)
                        .multilineTextAlignment(.center)
                        .cornerRadius(10)

                  
                        
                        Text(card.AlbumName)
                            .font(.system(size: 15))
                        
                            .frame(height: 10)
                            .frame(width: 100)
                        
                        Text(card.NomeArtista)
                            .font(.system(size: 13))
                        
                            .frame(height: 2)
                            .frame(width: 100)
                            .foregroundColor(.gray)
                            .padding(2)
                    
                }

            }
        }

}

#Preview {

    let card = Card(AlbumImage: "Geolier", NomeArtista: "Geolier", AlbumName: "Emanuele")


    return CardView(card: card)
}

