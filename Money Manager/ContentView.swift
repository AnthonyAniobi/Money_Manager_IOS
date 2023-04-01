//
//  ContentView.swift
//  Money Manager
//
//  Created by Anthony Aniobi on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State var selectedId = CreditCards.all[0].id
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                Spacer().frame(height: 60)
                HStack{
                    Spacer()
                    Image(systemName: "person")
                        .padding()
                        .background(.white)
                        
                        .shadow(color: .black.opacity(0.2), radius: 2, x: 2, y: 2)
                }.padding(.horizontal)
                HStack{
                    Text("My Cards")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Spacer()
                }.padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 12){
                        Image(systemName: "plus")
                            .padding(.vertical, 20)
                            .padding(.horizontal, 15)
                            .cornerRadius(10)
                            .background(.white)
                            .border(.black)
                            .padding(.horizontal)
                            
                        ForEach(CreditCards.all){item in
                            CardView(isSelected: selectedId == item.id, balance: item.price, cardNumber: item.cardNumber, cardLogo: item.cardLogo)
                                .onTapGesture {
                                    selectedId = item.id
                                }
                                .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 10)
                        }
                    }.frame(height: 150)
                    .padding(.vertical)
                }
                VStack {
                    HStack{
                        Text("Send Money")
                            .foregroundColor(.white)
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .padding(8)
                            .background(Color("Primary"))
                            .clipShape(Circle())
                        Text("Add recepient")
                            .foregroundColor(.white)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .padding(.bottom, 30)
                    .background(.black)
                    .cornerRadius(25)
                    LazyVStack{
                        ForEach(TransactionModel.all){transaction in
                            TransactionCard(transaction: transaction)
                        }
                    }
                    .padding(.vertical)
                    .background(.white)
                    .cornerRadius(25)
                    .offset(x: 0, y: -45)
                    
                }
                .padding(.horizontal)
            }
            .background(Color("Secondary"))
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.all)
            .toolbar{
                ToolbarItemGroup(placement: .bottomBar){
                    ZStack{
                        Image(systemName: "house")
                        Text("home")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.black)
                    
                }
            }
        }
    }
}

struct TransactionCard: View {
    let transaction: TransactionModel
    var body: some View {
        HStack(alignment: .center){
            Image(transaction.image)
                .resizable()
                .frame(width:60, height:50)
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading){
                Text(transaction.title)
                    .font(.title2)
                Text(transaction.subtitle)
                    .font(.caption)
                    .opacity(0.6)
            }
            Spacer()
            Text(transaction.price)
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
