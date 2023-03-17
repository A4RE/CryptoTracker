//
//  AllCoinsItemView.swift
//  CryptoTracker
//
//  Created by Андрей Коваленко on 17.03.2023.
//

import SwiftUI
import Kingfisher

struct AllCoinsItemView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            //Market cap Number
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            //Image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            //Name & Ticker
            VStack (alignment: .leading, spacing: 4){
                Text(coin.name)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                    .padding(.leading, 4)
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 4)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 2)
            Spacer()
            
            //Price and Move
            VStack (alignment: .trailing, spacing: 4){
                Text(coin.currentPrice.toCurrency())
                    .fontWeight(.semibold)
                    .font(.subheadline)
                    .padding(.leading, 4)
                Text(coin.priceChangePercentage24H.toPercent())
                    .font(.caption)
                    .padding(.leading, 4)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
        .background(Color("itemBackgroundColor"))
        .frame(width: 380, height: 70)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(.systemGray), lineWidth: 1.5)
        )
        
    }
    
}


//struct AllCoinsItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsItemView()
//    }
//}
