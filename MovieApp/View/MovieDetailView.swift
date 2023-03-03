//
//  MovieDetailView.swift
//  MovieApp
//
//  Created by Adolfo Lozada Serena on 25/02/23.
//

import SwiftUI

struct MovieDetailView: View {
  let movieItem: MovieItem
  
  var body: some View {
    VStack(spacing: 15){
      Spacer()
        .frame(height: 30)
      Image(systemName: movieItem.image)
        .resizable()
        .frame(width: 120, height: 120)
      Text(movieItem.name)
        .font(.title2)
      Text(movieItem.description)
        .font(.caption)
        .padding(.horizontal)
      Spacer()
    }
  }
}

struct MovieDetailView_Previews: PreviewProvider {
  static var previews: some View {
    let moviesModel = MovieViewModel()
    MovieDetailView(movieItem: moviesModel.movies.first!)
  }
}
