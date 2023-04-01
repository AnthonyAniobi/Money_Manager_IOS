//
//  CardView.swift
//  Money Manager
//
//  Created by Anthony Aniobi on 01/04/2023.
//

import SwiftUI

struct CardView: View {
    var isSelected:Bool
    let balance: String
    let cardNumber: String
    let cardLogo: String
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Spacer()
                Image(cardLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 15)
                    .foregroundColor(isSelected ? .white:.black)
                    .padding()
            }
            Spacer()
            Text("Balance")
                .font(.caption)
                .foregroundColor(isSelected ? .white:.black)
            HStack(alignment:.center) {
                Text("USD")
                    .font(.caption)
                    .foregroundColor(isSelected ? .white:.black)
                Text(balance)
                    .fontWeight(.semibold)
                    .foregroundColor(isSelected ? .white:.black)
            }.padding(.bottom)
            Text(cardNumber)
                .font(.caption)
                .foregroundColor(isSelected ? .white:.black)
                
        }
        .padding(8)
        .background(isSelected ? Color("Primary"): .white)
        .cornerRadius(20)
        .frame(width: 150, height: 150)
    }
}

struct CardView_Previews: PreviewProvider {
    static let balance = "$17,370.52"
    static let cardNumber = "**** **** **** 3200"
    
    static var previews: some View {
        Group {
            CardView(isSelected: true, balance: self.balance, cardNumber: self.cardNumber, cardLogo: "visa")
                .previewLayout(.sizeThatFits)
            CardView(isSelected: false, balance: self.balance, cardNumber: self.cardNumber, cardLogo: "mastercard")
                .previewLayout(.sizeThatFits)
        }
    }
}
