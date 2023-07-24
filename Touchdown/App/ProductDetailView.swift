//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Fernando on 23/07/23.
//

import SwiftUI

struct ProductDetailView: View {
    
     // MARK: - Properties
    
    
    
     // MARK: - Body
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            Spacer()
        } // VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
