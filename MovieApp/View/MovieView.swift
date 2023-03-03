//
//  MovieView.swift
//  MovieApp
//
//  Created by Adolfo Lozada Serena on 24/02/23.
//

import SwiftUI

struct MovieView: View {
  @State var movieItem: MovieItem
  
  var body: some View {
    HStack(alignment: .center){
      ZStack{
        Image(systemName: "applescript.fill")
          .resizable()
          .frame(width: 120, height: 120)
      }
      VStack(spacing: 15){
        Text(movieItem.name)
          .font(.title2)
        Text(movieItem.description)
          .font(.caption)
          .frame(height: 60)
      }
    }
  }
}

struct MovieView_Previews: PreviewProvider{
  static var previews: some View {
    MovieView(movieItem: MovieItem(id: 1, name: "Titulo", description: "Una descripción muy larga pero interesante, para poder testear la aplicación y la separación de textos", image: "imagen"))
  }
}
