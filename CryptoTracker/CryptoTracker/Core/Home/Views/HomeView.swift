//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Андрей Коваленко on 16.03.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // tranding coins view
                TrandingCoinsView(viewModel: viewModel)
                
                Divider()
                // all coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
