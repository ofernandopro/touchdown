//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Fernando on 22/07/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
