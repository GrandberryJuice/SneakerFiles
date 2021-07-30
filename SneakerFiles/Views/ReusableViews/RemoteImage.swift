//
//  RemoteImage.swift
//  SneakerFiles
//
//  Created by Kgrandbe on 7/29/21.
//

import SwiftUI

protocol ImageDownloader {
    func downloadImageData(completion: @escaping (Data?) -> Void)
}

// TODO: Rename view
struct RemoteImage: View {
    @State var uiImage: UIImage?
    
    let placeHolderImage: Image
    let imageDownloader: ImageDownloader
    
    init(placeholderImage: Image, imageDownloader: ImageDownloader) {
        self.placeHolderImage = placeholderImage
        self.imageDownloader = imageDownloader
    }
    
    var body: some View {
        if let uiImage = self.uiImage {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        } else {
            placeHolderImage
                .resizable()
                .onAppear(perform: getImage)
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
    }
    
    private func getImage() {
        imageDownloader.downloadImageData { imageData in
            guard let imageData = imageData, let downloadedImage = UIImage(data: imageData) else {
                self.uiImage = nil
                return
            }
            
            DispatchQueue.main.async {
                self.uiImage = downloadedImage
            }
        }
    }
}

class DefaultImageDownloader: ImageDownloader {
    let imagePath: String
    
    init(imagePath: String) {
        self.imagePath = imagePath
    }

    func downloadImageData(completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: imagePath) else { return }
        let dataTask = URLSession.shared.dataTask(with: url) {(data, response, error) in
            if let data = data {
                completion(data)
            }
        }
        
        dataTask.resume()
    }
}

struct RemoteImage_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImage(placeholderImage: Image(systemName: "photo"), imageDownloader: DefaultImageDownloader(imagePath: "https://images.stockx.com/images/Air-Jordan-1-Retro-High-Electro-Orange-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&trim=color&q=90&dpr=2&updated_at=1626802469"))
    }
}
