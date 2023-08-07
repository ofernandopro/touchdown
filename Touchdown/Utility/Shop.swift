//
//  Shop.swift
//  Touchdown
//
//  Created by Fernando on 07/08/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
