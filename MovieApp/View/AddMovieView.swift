//
//  AddMovieView.swift
//  MovieApp
//
//  Created by Adolfo Lozada Serena on 26/02/23.
//

import SwiftUI

struct AddMovieView: View {
  @State private var imageName: String = ""
  @State private var movieName: String = ""
  @State private var description: String = ""
  var content: (_ newMovieItem: MovieItem) -> Void
  
  @Environment(\.dismiss) private var dismiss
  
  var body: some View {
    VStack(spacing: 20){
      Spacer()
        .frame(height: 30)
      
      setTextField(withTextLabel: "Imagen:",
                   placeHolder: "Introduce el nombre de la imagen",
                   andBinding: $imageName)
      
      setTextField(withTextLabel: "Nombre:",
                   placeHolder: "Inroduzca el nombre de la película",
                   andBinding: $movieName)
      
      setTextField(withTextLabel: "Descripción:",
                   placeHolder: "Inroduzca una descripción",
                   andBinding: $description)
      
      Button{
        print("movie name: \(movieName)")
        let newMovieItem = MovieItem(id: 0, name: movieName, description: description, image: imageName)
        content(newMovieItem)
        dismiss()
      } label: {
        HStack{
          Image(systemName: "square.and.arrow.down")
            .foregroundColor(.white)
          Text("Guardar")
            .foregroundColor(.white)
        }
      }
      .buttonStyle(.borderedProminent)
      
      Spacer()
    }
  }
  
  @ViewBuilder func setTextField(withTextLabel textLabel: String, placeHolder placeholder: String, andBinding binding: Binding<String>) -> some View {
    HStack {
      Text(textLabel)
        .frame(width: 100, alignment: .trailing)
        .font(.system(size: 16, weight: .bold))
      TextField(placeholder, text: binding)
        .textFieldStyle(.roundedBorder)
        .font(.system(size: 13, weight: .regular))
        .disableAutocorrection(true)
    }
    .padding(.horizontal)
  }
}

struct AddMovieView_Previews: PreviewProvider{
  static var previews: some View {
    AddMovieView { newMovieItem in
      print("movie: \(newMovieItem.name)")
    }
  }
}
