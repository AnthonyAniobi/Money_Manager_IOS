//
//  CreditCards.swift
//  Money Manager
//
//  Created by Anthony Aniobi on 01/04/2023.
//

import Foundation


struct CreditCards: Identifiable{
    let id = UUID()
    let cardLogo: String
    let price: String
    let cardNumber: String
    
    static var all: [CreditCards] = [
        CreditCards(cardLogo: "visa", price: "12,234.20", cardNumber: "**** **** **** 3200"),
        CreditCards(cardLogo: "mastercard", price: "2,234.05", cardNumber: "**** **** **** 1430"),
        CreditCards(cardLogo: "visa", price: "1,323.50", cardNumber: "**** **** **** 0934"),
        CreditCards(cardLogo: "mastercard", price: "5,233.00", cardNumber: "**** **** **** 7432"),
        CreditCards(cardLogo: "visa", price: "244.00", cardNumber: "**** **** **** 2837"),
        CreditCards(cardLogo: "mastercard", price: "55,000.00", cardNumber: "**** **** **** 1637"),
    ]
}
