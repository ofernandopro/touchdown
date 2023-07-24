//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Fernando on 23/07/23.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } // VStack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
