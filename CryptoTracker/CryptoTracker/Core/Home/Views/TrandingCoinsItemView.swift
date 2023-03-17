//
//  TrandingCoinsItemView.swift
//  CryptoTracker
//
//  Created by Андрей Коваленко on 16.03.2023.
//

import SwiftUI
import Kingfisher

struct TrandingCoinsItemView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading) {
            //image
            HStack {
                KFImage(URL(string: coin.image))
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.orange)
                Text(coin.symbol.uppercased())
                    .fontWeight(.bold)
                    .font(.title3)
                    
            }
            .padding(.bottom, 3)
            
            
            //coin info
            HStack {
                Text(coin.currentPrice.toCurrency())
                    .font(.title3)
                    .foregroundColor(.gray)
            }
            //coin % change
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color("itemBackgroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color(.systemGray), lineWidth: 1.5)
        )
    }
}

//struct TrandingCoinsItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TrandingCoinsItemView()
//    }
//}
