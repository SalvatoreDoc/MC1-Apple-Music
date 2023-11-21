//
//  Card.swift
//  Apple Music
//
//  Created by Salvatore Capasso on 16/11/23.
//

import Foundation
import SwiftUI

struct Card: Identifiable {

    var id = UUID()
    var AlbumImage = String()
    var NomeArtista = String()
    var AlbumName = String()
    var consigli = String()
    var categoriacolore : Color = .black
}
