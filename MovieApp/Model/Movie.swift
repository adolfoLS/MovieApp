//
//  Movie.swift
//  MovieApp
//
//  Created by Adolfo Lozada Serena on 22/02/23.
//

import Foundation

struct MovieItem: Codable, Identifiable{
  var id: Int
  var name: String
  var description: String
  var image: String
}
