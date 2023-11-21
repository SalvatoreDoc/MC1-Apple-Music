//
//  Bottone.swift
//  Apple Music
//
//  Created by Salvatore Capasso on 20/11/23.
//

import SwiftUI

struct Bottone: View {
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 380, height: 65)
                .cornerRadius(20)
                .shadow(radius: 5)
            HStack{
                Image("Geolier")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .cornerRadius(9)
                   Text("Emanuele")
                    .bold()
                    .foregroundColor(.black)
                
                    
                Image(systemName:"play.fill")
                    .foregroundColor(.black)
                    .offset(x:125)
                    .font(.system(size: 25))

                Image(systemName:"forward.fill")
                    .offset(x:140)
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                
            }.offset(x:-75)
            
        }
    }
    
}

#Preview {
    Bottone()
}
