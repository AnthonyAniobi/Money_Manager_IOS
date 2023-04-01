//
//  TransactionModel.swift
//  Money Manager
//
//  Created by Anthony Aniobi on 01/04/2023.
//

import Foundation


struct TransactionModel:Identifiable{
    let id = UUID()
    var title:String
    var subtitle:String
    var price:String
    var image:String
    
    static var all:[TransactionModel] = [
        TransactionModel(title: "Spotify", subtitle: "Music from spotify player", price: "$10", image: "spotify"),
        TransactionModel(title: "Amazon music", subtitle: "Music from amazon store", price: "$50", image: "amazon"),
        TransactionModel(title: "Album Music", subtitle: "Music from custom album store", price: "$30", image: "album"),
        TransactionModel(title: "Custom music", subtitle: "Music from the dark web", price: "$300", image: "music"),
        TransactionModel(title: "W music", subtitle: "Music from amazon store", price: "$300", image: "wmusic"),
        TransactionModel(title: "Music Terapy", subtitle: "Music terapy 1605 store", price: "$300", image: "musictp"),
        TransactionModel(title: "Apple music", subtitle: "Music from apple store", price: "$390", image: "apple"),
        TransactionModel(title: "Play music", subtitle: "Google music player store", price: "$3.5", image: "play"),
        TransactionModel(title: "Flo music", subtitle: "Music from Flo store", price: "$90", image: "flo"),
        TransactionModel(title: "Some music", subtitle: "Some music from some store", price: "$70", image: "music8"),
    ]
}
