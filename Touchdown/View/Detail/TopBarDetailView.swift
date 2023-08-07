//
//  TopBarDetailView.swift
//  Touchdown
//
//  Created by Fernando on 30/07/23.
//

import SwiftUI

struct TopBarDetailView: View {
    
    // MARK: - Properties
        
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarDetailView()
            .environmentObject(Shop())
    }
}
