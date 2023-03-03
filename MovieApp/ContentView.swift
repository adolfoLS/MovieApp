//
//  ContentView.swift
//  MovieApp
//
//  Created by Adolfo Lozada Serena on 22/02/23.
//

import SwiftUI

struct ContentView: View {
  @StateObject var moviesModel = MovieViewModel()
  
  var body: some View {
    NavigationView{
      List($moviesModel.movies, editActions: .delete){ $item in
        NavigationLink {
          MovieDetailView(movieItem: item)
        } label: {
          MovieView(movieItem: item)
        }
        .deleteDisabled(item.id < 6)
      }
      .navigationTitle("Home")
      .toolbar {
        NavigationLink {
          AddMovieView { newMovieItem in
            moviesModel.appendMovie(newMovieItem: newMovieItem)
          }
        } label: {
          Text("+")
            .font(.system(size: 40, weight: .regular))
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
