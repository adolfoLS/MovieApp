//
//  MovieViewModel.swift
//  MovieApp
//
//  Created by Adolfo Lozada Serena on 24/02/23.
//

import Foundation

class MovieViewModel: ObservableObject {
  @Published var movies: [MovieItem]
  
  init(){
    movies = Bundle.main.decode([MovieItem].self, from: "movies.json")
  }
  
  func appendMovie(newMovieItem: MovieItem) {
    var movieItem = newMovieItem
    movieItem.id = movies.count + 1
    movies.append(movieItem)
  }
  
  func deleteMovie(atIndex index: Int) {
    movies.remove(at: index)
  }
}
