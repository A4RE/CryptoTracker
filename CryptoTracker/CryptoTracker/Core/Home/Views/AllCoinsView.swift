//
//  AllCoinsView.swift
//  CryptoTracker
//
//  Created by Андрей Коваленко on 17.03.2023.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack (alignment: .leading){
            Text("All Coins")
                .fontWeight(.semibold)
                .font(.headline)
            HStack {
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .padding(.horizontal)
            .foregroundColor(.gray)
            .font(.caption)
            ScrollView{
                VStack (spacing: 10){
                    ForEach(viewModel.coins){ coin in
                        AllCoinsItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
