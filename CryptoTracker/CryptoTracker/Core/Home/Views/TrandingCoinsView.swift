//
//  TrandingCoinsView.swift
//  CryptoTracker
//
//  Created by Андрей Коваленко on 16.03.2023.
//

import SwiftUI

struct TrandingCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Tranding Coins")
                .font(.headline)
                .fontWeight(.bold)
            
            ScrollView (.horizontal) {
                HStack(spacing: 13){
                    ForEach(viewModel.topTrendCoins){ coin in
                        TrandingCoinsItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

struct TrandingCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        TrandingCoinsView(viewModel: HomeViewModel())
    }
}
