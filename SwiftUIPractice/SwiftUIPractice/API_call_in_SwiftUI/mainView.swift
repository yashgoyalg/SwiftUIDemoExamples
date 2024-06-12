//
//  mainView.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 11/03/24.
//

import SwiftUI

struct imgInfo : Hashable, Codable {
    var name: String
    var image: String
}

class Viewmodel: ObservableObject {
    
    @Published var info : [imgInfo] = []
    
    func getData() {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data,response,error in
            
            guard let data = data , error == nil else {return}
            //convert to JSON
            do{
                let imgInfo = try JSONDecoder().decode([imgInfo].self, from: data)
                DispatchQueue.main.async {
                    self.info = imgInfo
                }
            } catch{
                print(error)
            }
        }
        task.resume()

    }
}


struct mainView: View {
    @StateObject var viewModel = Viewmodel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.info, id: \.self) {
                    i in
                    HStack {
                        Image(i.image)
                            .frame(width: 130,height: 70)
                            .background(Color.gray)
                        Text(i.name)
                            .bold()
                    }
                    .padding(3)
                }
            }
            .navigationTitle("Images")
            .onAppear {
                viewModel.getData()
            }
        }
    }
}

#Preview {
    mainView()
}
